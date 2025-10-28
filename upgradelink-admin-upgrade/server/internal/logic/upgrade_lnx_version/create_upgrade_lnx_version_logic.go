package upgrade_lnx_version

import (
	"context"

	"upgradelink-admin-upgrade/server/ent/predicate"
	"upgradelink-admin-upgrade/server/ent/upgradelnxversion"
	"upgradelink-admin-upgrade/server/internal/logic/base"
	"upgradelink-admin-upgrade/server/internal/svc"
	"upgradelink-admin-upgrade/server/internal/types"
	"upgradelink-admin-upgrade/server/internal/utils/dberrorhandler"

	"github.com/suyuan32/simple-admin-common/msg/errormsg"
	"github.com/suyuan32/simple-admin-common/utils/pointy"
	"github.com/zeromicro/go-zero/core/errorx"
	"github.com/zeromicro/go-zero/core/logx"
)

type CreateUpgradeLnxVersionLogic struct {
	ctx    context.Context
	svcCtx *svc.ServiceContext
	logx.Logger

	companyID int
}

func NewCreateUpgradeLnxVersionLogic(ctx context.Context, svcCtx *svc.ServiceContext) *CreateUpgradeLnxVersionLogic {
	return &CreateUpgradeLnxVersionLogic{
		ctx:    ctx,
		svcCtx: svcCtx,
		Logger: logx.WithContext(ctx),
	}
}

func (l *CreateUpgradeLnxVersionLogic) CreateUpgradeLnxVersion(req *types.UpgradeLnxVersionInfo) (*types.BaseMsgResp, error) {
	// 获取公司 id
	companyID, err := base.GetCompanyId(l.ctx, l.svcCtx, l.Logger)
	if err != nil {
		return nil, err
	}
	l.companyID = companyID

	// 效验请求参数数据
	err = l.CheckCreateUpgradeLnxVersion(req)
	if err != nil {
		return nil, errorx.NewCodeInvalidArgumentError(err.Error())
	}

	isDel := int32(0)
	_, err = l.svcCtx.DB.UpgradeLnxVersion.Create().
		SetNotNilCompanyID(&companyID).
		SetNotNilLnxID(req.LnxId).
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

func (l *CreateUpgradeLnxVersionLogic) CheckCreateUpgradeLnxVersion(req *types.UpgradeLnxVersionInfo) error {
	// 判断是否重复
	var predicates []predicate.UpgradeLnxVersion
	predicates = append(predicates, upgradelnxversion.LnxID(*req.LnxId))
	predicates = append(predicates, upgradelnxversion.VersionName(*req.VersionName))
	predicates = append(predicates, upgradelnxversion.IsDelEQ(0))
	predicates = append(predicates, upgradelnxversion.CompanyIDEQ(l.companyID))
	count, err := l.svcCtx.DB.UpgradeLnxVersion.Query().Where(predicates...).Count(l.ctx)
	if err != nil {
		return err
	}
	if count > 0 {
		return errorx.NewCodeInvalidArgumentError("当前应用版本名重复")
	}

	// 判断是否重复
	var predicates1 []predicate.UpgradeLnxVersion
	predicates1 = append(predicates1, upgradelnxversion.LnxID(*req.LnxId))
	predicates1 = append(predicates1, upgradelnxversion.VersionCode(*req.VersionCode))
	predicates1 = append(predicates1, upgradelnxversion.IsDelEQ(0))
	predicates1 = append(predicates1, upgradelnxversion.CompanyIDEQ(l.companyID))
	count1, err := l.svcCtx.DB.UpgradeLnxVersion.Query().Where(predicates1...).Count(l.ctx)
	if err != nil {
		return err
	}
	if count1 > 0 {
		return errorx.NewCodeInvalidArgumentError("当前应用版本号重复")
	}

	return nil
}
