package company_secret

import (
	"context"
	"upgradelink-admin-core/server/api/internal/svc"
	"upgradelink-admin-core/server/api/internal/types"
	"upgradelink-admin-core/server/rpc/types/core"

	"github.com/suyuan32/simple-admin-common/i18n"
	"github.com/suyuan32/simple-admin-common/orm/ent/entctx/userctx"
	"github.com/zeromicro/go-zero/core/logx"
)

type GetCompanySecretListLogic struct {
	logx.Logger
	ctx    context.Context
	svcCtx *svc.ServiceContext
}

func NewGetCompanySecretListLogic(ctx context.Context, svcCtx *svc.ServiceContext) *GetCompanySecretListLogic {
	return &GetCompanySecretListLogic{
		Logger: logx.WithContext(ctx),
		ctx:    ctx,
		svcCtx: svcCtx}
}

func (l *GetCompanySecretListLogic) GetCompanySecretList(req *types.CompanySecretListReq) (resp *types.CompanySecretListResp, err error) {

	// 获取公司 id
	userId, err := userctx.GetUserIDFromCtx(l.ctx)
	if err != nil {
		return nil, err
	}
	userData, err := l.svcCtx.CoreRpc.GetUserById(l.ctx, &core.UUIDReq{
		Id: userId,
	})
	if err != nil {
		return nil, err
	}

	isDelInt := uint32(0)
	data, err := l.svcCtx.CoreRpc.GetCompanySecretList(l.ctx, &core.CompanySecretListReq{
		Page:      req.Page,
		PageSize:  req.PageSize,
		CompanyId: userData.CompanyId,
		AccessKey: &req.AccessKey,
		SecretKey: &req.SecretKey,
		Enable:    req.Enable,
		IsDel:     &isDelInt,
	})
	if err != nil {
		return nil, err
	}

	resp = &types.CompanySecretListResp{}
	resp.Data.Total = data.Total
	for _, v := range data.Data {
		resp.Data.Data = append(resp.Data.Data, types.CompanySecretInfo{
			BaseIDInfo: types.BaseIDInfo{
				Id:        v.Id,
				CreatedAt: v.CreatedAt,
				UpdatedAt: v.UpdatedAt,
			},
			AccessKey:   *v.AccessKey,
			SecretKey:   *v.SecretKey,
			Enable:      v.Enable,
			IsDel:       v.IsDel,
			Description: *v.Description,
		})
	}
	resp.Msg = l.svcCtx.Trans.Trans(l.ctx, i18n.Success)
	return resp, nil
}
