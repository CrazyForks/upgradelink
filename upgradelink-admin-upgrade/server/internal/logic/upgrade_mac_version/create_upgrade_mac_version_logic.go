package upgrade_mac_version

import (
	"context"

	"upgradelink-admin-upgrade/server/ent/predicate"
	"upgradelink-admin-upgrade/server/ent/upgrademacversion"
	"upgradelink-admin-upgrade/server/internal/logic/base"
	"upgradelink-admin-upgrade/server/internal/svc"
	"upgradelink-admin-upgrade/server/internal/types"
	"upgradelink-admin-upgrade/server/internal/utils/dberrorhandler"

	"github.com/suyuan32/simple-admin-common/msg/errormsg"
	"github.com/suyuan32/simple-admin-common/utils/pointy"
	"github.com/zeromicro/go-zero/core/errorx"
	"github.com/zeromicro/go-zero/core/logx"
)

type CreateUpgradeMacVersionLogic struct {
	ctx    context.Context
	svcCtx *svc.ServiceContext
	logx.Logger

	companyID int
}

func NewCreateUpgradeMacVersionLogic(ctx context.Context, svcCtx *svc.ServiceContext) *CreateUpgradeMacVersionLogic {
	return &CreateUpgradeMacVersionLogic{
		ctx:    ctx,
		svcCtx: svcCtx,
		Logger: logx.WithContext(ctx),
	}
}

func (l *CreateUpgradeMacVersionLogic) CreateUpgradeMacVersion(req *types.UpgradeMacVersionInfo) (*types.BaseMsgResp, error) {
	// 获取公司 id
	companyID, err := base.GetCompanyId(l.ctx, l.svcCtx, l.Logger)
	if err != nil {
		return nil, err
	}
	l.companyID = companyID

	// 效验请求参数数据
	err = l.CheckCreateUpgradeMacVersion(req)
	if err != nil {
		return nil, errorx.NewCodeInvalidArgumentError(err.Error())
	}

	isDel := int32(0)
	_, err = l.svcCtx.DB.UpgradeMacVersion.Create().
		SetNotNilCompanyID(&companyID).
		SetNotNilMACID(req.MacId).
		SetNotNilCloudFileID(req.CloudFileId).
		SetNotNilVersionName(req.VersionName).
		SetNotNilVersionCode(req.VersionCode).
		SetNotNilArch(req.Arch).
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

func (l *CreateUpgradeMacVersionLogic) CheckCreateUpgradeMacVersion(req *types.UpgradeMacVersionInfo) error {
	// 判断是否重复
	var predicates []predicate.UpgradeMacVersion
	predicates = append(predicates, upgrademacversion.MACID(*req.MacId))
	predicates = append(predicates, upgrademacversion.VersionName(*req.VersionName))
	predicates = append(predicates, upgrademacversion.IsDelEQ(0))
	predicates = append(predicates, upgrademacversion.CompanyIDEQ(l.companyID))
	count, err := l.svcCtx.DB.UpgradeMacVersion.Query().Where(predicates...).Count(l.ctx)
	if err != nil {
		return err
	}
	if count > 0 {
		return errorx.NewCodeInvalidArgumentError("当前应用版本名重复")
	}

	// 判断是否重复
	var predicates1 []predicate.UpgradeMacVersion
	predicates1 = append(predicates1, upgrademacversion.MACID(*req.MacId))
	predicates1 = append(predicates1, upgrademacversion.VersionCode(*req.VersionCode))
	predicates1 = append(predicates1, upgrademacversion.IsDelEQ(0))
	predicates1 = append(predicates1, upgrademacversion.CompanyIDEQ(l.companyID))
	count1, err := l.svcCtx.DB.UpgradeMacVersion.Query().Where(predicates1...).Count(l.ctx)
	if err != nil {
		return err
	}
	if count1 > 0 {
		return errorx.NewCodeInvalidArgumentError("当前应用版本号重复")
	}

	return nil
}
