package upgrade_mac

import (
	"context"
	"time"

	"upgradelink-admin-upgrade/server/ent/predicate"
	"upgradelink-admin-upgrade/server/ent/upgrademac"
	"upgradelink-admin-upgrade/server/internal/logic/base"
	"upgradelink-admin-upgrade/server/internal/svc"
	"upgradelink-admin-upgrade/server/internal/types"
	"upgradelink-admin-upgrade/server/internal/utils/dberrorhandler"

	"github.com/suyuan32/simple-admin-common/msg/errormsg"

	"github.com/suyuan32/simple-admin-common/utils/pointy"
	"github.com/zeromicro/go-zero/core/logx"
)

type GetUpgradeMacListLogic struct {
	ctx    context.Context
	svcCtx *svc.ServiceContext
	logx.Logger
}

func NewGetUpgradeMacListLogic(ctx context.Context, svcCtx *svc.ServiceContext) *GetUpgradeMacListLogic {
	return &GetUpgradeMacListLogic{
		ctx:    ctx,
		svcCtx: svcCtx,
		Logger: logx.WithContext(ctx),
	}
}

func (l *GetUpgradeMacListLogic) GetUpgradeMacList(req *types.UpgradeMacListReq) (*types.UpgradeMacListResp, error) {
	var predicates []predicate.UpgradeMac

	// 获取公司 id
	companyID, err := base.GetCompanyId(l.ctx, l.svcCtx, l.Logger)
	if err != nil {
		return nil, err
	}
	predicates = append(predicates, upgrademac.CompanyIDEQ(companyID))

	// 删除状态
	predicates = append(predicates, upgrademac.IsDelEQ(0))
	if req.Key != nil {
		predicates = append(predicates, upgrademac.KeyContains(*req.Key))
	}
	if req.Name != nil {
		predicates = append(predicates, upgrademac.NameContains(*req.Name))
	}
	if req.IsDel != nil {
		predicates = append(predicates, upgrademac.IsDelEQ(*req.IsDel))
	}
	if req.CreateAt != nil {
		predicates = append(predicates, upgrademac.CreateAtGTE(time.UnixMilli(*req.CreateAt)))
	}
	if req.UpdateAt != nil {
		predicates = append(predicates, upgrademac.UpdateAtGTE(time.UnixMilli(*req.UpdateAt)))
	}
	data, err := l.svcCtx.DB.UpgradeMac.Query().Where(predicates...).Page(l.ctx, req.Page, req.PageSize)

	if err != nil {
		return nil, dberrorhandler.DefaultEntError(l.Logger, err, req)
	}

	resp := &types.UpgradeMacListResp{}
	resp.Msg = errormsg.Success
	resp.Data.Total = data.PageDetails.Total

	for _, v := range data.List {
		resp.Data.Data = append(resp.Data.Data,
			types.UpgradeMacInfo{
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
