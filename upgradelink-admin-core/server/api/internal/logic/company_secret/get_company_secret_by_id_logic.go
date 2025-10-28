package company_secret

import (
	"context"
	"upgradelink-admin-core/server/rpc/types/core"

	"upgradelink-admin-core/server/api/internal/svc"
	"upgradelink-admin-core/server/api/internal/types"

	"github.com/suyuan32/simple-admin-common/i18n"
	"github.com/suyuan32/simple-admin-common/orm/ent/entctx/userctx"
	"github.com/zeromicro/go-zero/core/errorx"
	"github.com/zeromicro/go-zero/core/logx"
)

type GetCompanySecretByIdLogic struct {
	logx.Logger
	ctx    context.Context
	svcCtx *svc.ServiceContext
}

func NewGetCompanySecretByIdLogic(ctx context.Context, svcCtx *svc.ServiceContext) *GetCompanySecretByIdLogic {
	return &GetCompanySecretByIdLogic{
		Logger: logx.WithContext(ctx),
		ctx:    ctx,
		svcCtx: svcCtx,
	}
}

func (l *GetCompanySecretByIdLogic) GetCompanySecretById(req *types.IDReq) (resp *types.CompanySecretInfoResp, err error) {
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

	// 效验公司数据
	data, err := l.svcCtx.CoreRpc.GetCompanySecretById(l.ctx, &core.IDReq{Id: req.Id})
	if err != nil {
		return nil, err
	}
	if data.CompanyId != userData.CompanyId {
		return nil, errorx.NewCodeInvalidArgumentError(i18n.TargetNotFound)
	}

	companySecretData, err := l.svcCtx.CoreRpc.GetCompanySecretById(l.ctx, &core.IDReq{Id: req.Id})
	if err != nil {
		return nil, err
	}

	return &types.CompanySecretInfoResp{
		BaseDataInfo: types.BaseDataInfo{
			Code: 0,
			Msg:  l.svcCtx.Trans.Trans(l.ctx, i18n.Success),
		},
		Data: types.CompanySecretInfo{
			BaseIDInfo: types.BaseIDInfo{
				Id:        companySecretData.Id,
				CreatedAt: companySecretData.CreatedAt,
				UpdatedAt: companySecretData.UpdatedAt,
			},
			AccessKey:   *companySecretData.AccessKey,
			SecretKey:   *companySecretData.SecretKey,
			Enable:      companySecretData.Enable,
			IsDel:       companySecretData.IsDel,
			Description: *companySecretData.Description,
		},
	}, nil
}
