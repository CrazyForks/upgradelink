package upgrade_mac

import (
	"context"
	"crypto/rand"
	"encoding/base64"

	"upgradelink-admin-upgrade/server/ent/predicate"
	"upgradelink-admin-upgrade/server/ent/upgrademac"
	"upgradelink-admin-upgrade/server/internal/logic/base"
	"upgradelink-admin-upgrade/server/internal/svc"
	"upgradelink-admin-upgrade/server/internal/types"
	"upgradelink-admin-upgrade/server/internal/utils/dberrorhandler"

	"github.com/suyuan32/simple-admin-common/msg/errormsg"
	"github.com/suyuan32/simple-admin-common/utils/pointy"
	"github.com/zeromicro/go-zero/core/errorx"
	"github.com/zeromicro/go-zero/core/logx"
)

type CreateUpgradeMacLogic struct {
	ctx    context.Context
	svcCtx *svc.ServiceContext
	logx.Logger

	companyID int
}

func NewCreateUpgradeMacLogic(ctx context.Context, svcCtx *svc.ServiceContext) *CreateUpgradeMacLogic {
	return &CreateUpgradeMacLogic{
		ctx:    ctx,
		svcCtx: svcCtx,
		Logger: logx.WithContext(ctx),
	}
}

func (l *CreateUpgradeMacLogic) CreateUpgradeMac(req *types.UpgradeMacInfo) (*types.BaseMsgResp, error) {

	// 获取公司 id
	companyID, err := base.GetCompanyId(l.ctx, l.svcCtx, l.Logger)
	if err != nil {
		return nil, err
	}
	l.companyID = companyID

	// 效验请求参数数据
	err = l.CheckCreateUpgrade(req)
	if err != nil {
		return nil, errorx.NewCodeInvalidArgumentError(err.Error())
	}

	// 生成Access Key (16字节 -> 24字符Base64)
	macBytes := make([]byte, 16)
	_, _ = rand.Read(macBytes)
	macKey := base64.RawURLEncoding.EncodeToString(macBytes)

	isDel := int32(0)
	_, err = l.svcCtx.DB.UpgradeMac.Create().
		SetNotNilCompanyID(&companyID).
		SetNotNilKey(&macKey).
		SetNotNilName(req.Name).
		SetNotNilPackageName(req.PackageName).
		SetNotNilDescription(req.Description).
		SetNotNilIsDel(&isDel).
		SetNotNilCreateAt(pointy.GetTimeMilliPointer(req.CreateAt)).
		SetNotNilUpdateAt(pointy.GetTimeMilliPointer(req.UpdateAt)).
		Save(l.ctx)

	if err != nil {
		return nil, dberrorhandler.DefaultEntError(l.Logger, err, req)
	}

	return &types.BaseMsgResp{Msg: errormsg.CreateSuccess}, nil
}

func (l *CreateUpgradeMacLogic) CheckCreateUpgrade(req *types.UpgradeMacInfo) error {
	// 判断是否重复
	var predicates []predicate.UpgradeMac
	predicates = append(predicates, upgrademac.Name(*req.Name))
	predicates = append(predicates, upgrademac.IsDelEQ(0))
	predicates = append(predicates, upgrademac.CompanyIDEQ(l.companyID))
	count, err := l.svcCtx.DB.UpgradeMac.Query().Where(predicates...).Count(l.ctx)
	if err != nil {
		return err
	}
	if count > 0 {
		return errorx.NewCodeInvalidArgumentError("应用名称重复")
	}

	// 判断是否重复
	var predicates1 []predicate.UpgradeMac
	predicates1 = append(predicates1, upgrademac.PackageName(*req.PackageName))
	predicates1 = append(predicates1, upgrademac.IsDelEQ(0))
	predicates1 = append(predicates1, upgrademac.CompanyIDEQ(l.companyID))
	count1, err := l.svcCtx.DB.UpgradeMac.Query().Where(predicates1...).Count(l.ctx)
	if err != nil {
		return err
	}
	if count1 > 0 {
		return errorx.NewCodeInvalidArgumentError("应用包名名称重复")
	}

	return nil
}
