package upgrade_mac

import (
	"context"

	"upgradelink-admin-upgrade/server/ent"
	"upgradelink-admin-upgrade/server/ent/predicate"
	"upgradelink-admin-upgrade/server/ent/upgrademac"
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

type UpdateUpgradeMacLogic struct {
	ctx    context.Context
	svcCtx *svc.ServiceContext
	logx.Logger

	companyID int
}

func NewUpdateUpgradeMacLogic(ctx context.Context, svcCtx *svc.ServiceContext) *UpdateUpgradeMacLogic {
	return &UpdateUpgradeMacLogic{
		ctx:    ctx,
		svcCtx: svcCtx,
		Logger: logx.WithContext(ctx),
	}
}

func (l *UpdateUpgradeMacLogic) UpdateUpgradeMac(req *types.UpgradeMacInfo) (*types.BaseMsgResp, error) {
	// 获取公司 id
	companyID, err := base.GetCompanyId(l.ctx, l.svcCtx, l.Logger)
	if err != nil {
		return nil, err
	}
	l.companyID = companyID

	// 效验请求参数数据
	err = l.CheckUpdateUpgradeMac(req)
	if err != nil {
		return nil, errorx.NewCodeInvalidArgumentError(err.Error())
	}

	// 效验下请求数据是否属于当前操作者
	data, err := l.svcCtx.DB.UpgradeMac.Get(l.ctx, *req.Id)
	if err != nil {
		return nil, dberrorhandler.DefaultEntError(l.Logger, err, req)
	}
	if data.CompanyID != companyID {
		return nil, errorx.NewCodeInvalidArgumentError(i18n.TargetNotFound)
	}

	reqModel := ent.UpgradeMac{
		ID:        *req.Id,
		CompanyID: companyID,
	}
	err = l.svcCtx.DB.UpgradeMac.UpdateOne(&reqModel).
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

func (l *UpdateUpgradeMacLogic) CheckUpdateUpgradeMac(req *types.UpgradeMacInfo) error {
	// 判断是否重复
	var predicates []predicate.UpgradeMac
	predicates = append(predicates, upgrademac.IDNEQ(*req.Id))
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
