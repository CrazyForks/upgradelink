package upgrade_lnx

import (
	"context"
	"time"

	"upgradelink-admin-upgrade/server/ent/predicate"
	"upgradelink-admin-upgrade/server/ent/upgradelnx"
	"upgradelink-admin-upgrade/server/internal/logic/base"
	"upgradelink-admin-upgrade/server/internal/svc"
	"upgradelink-admin-upgrade/server/internal/types"
	"upgradelink-admin-upgrade/server/internal/utils/dberrorhandler"

	"github.com/suyuan32/simple-admin-common/msg/errormsg"

	"github.com/suyuan32/simple-admin-common/utils/pointy"
	"github.com/zeromicro/go-zero/core/logx"
)

type GetUpgradeLnxListLogic struct {
	ctx    context.Context
	svcCtx *svc.ServiceContext
	logx.Logger
}

func NewGetUpgradeLnxListLogic(ctx context.Context, svcCtx *svc.ServiceContext) *GetUpgradeLnxListLogic {
	return &GetUpgradeLnxListLogic{
		ctx:    ctx,
		svcCtx: svcCtx,
		Logger: logx.WithContext(ctx),
	}
}

func (l *GetUpgradeLnxListLogic) GetUpgradeLnxList(req *types.UpgradeLnxListReq) (*types.UpgradeLnxListResp, error) {
	var predicates []predicate.UpgradeLnx

	// 获取公司 id
	companyID, err := base.GetCompanyId(l.ctx, l.svcCtx, l.Logger)
	if err != nil {
		return nil, err
	}
	predicates = append(predicates, upgradelnx.CompanyIDEQ(companyID))

	// 删除状态
	predicates = append(predicates, upgradelnx.IsDelEQ(0))
	if req.Key != nil {
		predicates = append(predicates, upgradelnx.KeyContains(*req.Key))
	}
	if req.Name != nil {
		predicates = append(predicates, upgradelnx.NameContains(*req.Name))
	}
	if req.IsDel != nil {
		predicates = append(predicates, upgradelnx.IsDelEQ(*req.IsDel))
	}
	if req.CreateAt != nil {
		predicates = append(predicates, upgradelnx.CreateAtGTE(time.UnixMilli(*req.CreateAt)))
	}
	if req.UpdateAt != nil {
		predicates = append(predicates, upgradelnx.UpdateAtGTE(time.UnixMilli(*req.UpdateAt)))
	}
	data, err := l.svcCtx.DB.UpgradeLnx.Query().Where(predicates...).Page(l.ctx, req.Page, req.PageSize)

	if err != nil {
		return nil, dberrorhandler.DefaultEntError(l.Logger, err, req)
	}

	resp := &types.UpgradeLnxListResp{}
	resp.Msg = errormsg.Success
	resp.Data.Total = data.PageDetails.Total

	for _, v := range data.List {
		resp.Data.Data = append(resp.Data.Data,
			types.UpgradeLnxInfo{
				Id:          &v.ID,
				Key:         &v.Key,
				Name:        &v.Name,
				PackageName: &v.PackageName,
				Description: &v.Description,
				IsDel:       &v.IsDel,
				CreateAt:    pointy.GetUnixMilliPointer(v.CreateAt.UnixMilli()),
				UpdateAt:    pointy.GetUnixMilliPointer(v.UpdateAt.UnixMilli()),
			})
	}

	return resp, nil
}
