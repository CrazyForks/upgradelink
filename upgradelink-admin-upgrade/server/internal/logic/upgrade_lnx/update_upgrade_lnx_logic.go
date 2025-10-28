package upgrade_lnx

import (
	"context"

	"upgradelink-admin-upgrade/server/ent"
	"upgradelink-admin-upgrade/server/ent/predicate"
	"upgradelink-admin-upgrade/server/ent/upgradelnx"
	"upgradelink-admin-upgrade/server/internal/logic/base"
	"upgradelink-admin-upgrade/server/internal/svc"
	"upgradelink-admin-upgrade/server/internal/types"
	"upgradelink-admin-upgrade/server/internal/utils/dberrorhandler"

	"github.com/suyuan32/simple-admin-common/i18n"
	"github.com/suyuan32/simple-admin-common/msg/errormsg"
	"github.com/suyuan32/simple-admin-common/utils/pointy"
	"github.com/zeromicro/go-zero/core/errorx"
	"github.com/zeromicro/go-zero/core/logx"
)

type UpdateUpgradeLnxLogic struct {
	ctx    context.Context
	svcCtx *svc.ServiceContext
	logx.Logger

	companyID int
}

func NewUpdateUpgradeLnxLogic(ctx context.Context, svcCtx *svc.ServiceContext) *UpdateUpgradeLnxLogic {
	return &UpdateUpgradeLnxLogic{
		ctx:    ctx,
		svcCtx: svcCtx,
		Logger: logx.WithContext(ctx),
	}
}

func (l *UpdateUpgradeLnxLogic) UpdateUpgradeLnx(req *types.UpgradeLnxInfo) (*types.BaseMsgResp, error) {
	// 获取公司 id
	companyID, err := base.GetCompanyId(l.ctx, l.svcCtx, l.Logger)
	if err != nil {
		return nil, err
	}
	l.companyID = companyID

	// 效验请求参数数据
	err = l.CheckUpdateUpgradeLnx(req)
	if err != nil {
		return nil, errorx.NewCodeInvalidArgumentError(err.Error())
	}

	// 效验下请求数据是否属于当前操作者
	data, err := l.svcCtx.DB.UpgradeLnx.Get(l.ctx, *req.Id)
	if err != nil {
		return nil, dberrorhandler.DefaultEntError(l.Logger, err, req)
	}
	if data.CompanyID != companyID {
		return nil, errorx.NewCodeInvalidArgumentError(i18n.TargetNotFound)
	}

	reqModel := ent.UpgradeLnx{
		ID:        *req.Id,
		CompanyID: companyID,
	}
	err = l.svcCtx.DB.UpgradeLnx.UpdateOne(&reqModel).
		SetNotNilKey(req.Key).
		SetNotNilName(req.Name).
		SetNotNilPackageName(req.PackageName).
		SetNotNilDescription(req.Description).
		SetNotNilIsDel(req.IsDel).
		SetNotNilCreateAt(pointy.GetTimeMilliPointer(req.CreateAt)).
		SetNotNilUpdateAt(pointy.GetTimeMilliPointer(req.UpdateAt)).
		Exec(l.ctx)

	if err != nil {
		return nil, dberrorhandler.DefaultEntError(l.Logger, err, req)
	}

	return &types.BaseMsgResp{Msg: errormsg.UpdateSuccess}, nil
}

func (l *UpdateUpgradeLnxLogic) CheckUpdateUpgradeLnx(req *types.UpgradeLnxInfo) error {
	// 判断是否重复
	var predicates []predicate.UpgradeLnx
	predicates = append(predicates, upgradelnx.IDNEQ(*req.Id))
	predicates = append(predicates, upgradelnx.Name(*req.Name))
	predicates = append(predicates, upgradelnx.IsDelEQ(0))
	predicates = append(predicates, upgradelnx.CompanyIDEQ(l.companyID))
	count, err := l.svcCtx.DB.UpgradeLnx.Query().Where(predicates...).Count(l.ctx)
	if err != nil {
		return err
	}
	if count > 0 {
		return errorx.NewCodeInvalidArgumentError("应用名称重复")
	}

	// 判断是否重复
	var predicates1 []predicate.UpgradeLnx
	predicates1 = append(predicates1, upgradelnx.PackageName(*req.PackageName))
	predicates1 = append(predicates1, upgradelnx.IsDelEQ(0))
	predicates1 = append(predicates1, upgradelnx.CompanyIDEQ(l.companyID))
	count1, err := l.svcCtx.DB.UpgradeLnx.Query().Where(predicates1...).Count(l.ctx)
	if err != nil {
		return err
	}
	if count1 > 0 {
		return errorx.NewCodeInvalidArgumentError("应用包名名称重复")
	}

	return nil
}
