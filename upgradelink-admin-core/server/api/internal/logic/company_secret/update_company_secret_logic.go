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

type UpdateCompanySecretLogic struct {
	logx.Logger
	ctx    context.Context
	svcCtx *svc.ServiceContext
}

func NewUpdateCompanySecretLogic(ctx context.Context, svcCtx *svc.ServiceContext) *UpdateCompanySecretLogic {
	return &UpdateCompanySecretLogic{
		Logger: logx.WithContext(ctx),
		ctx:    ctx,
		svcCtx: svcCtx,
	}
}

func (l *UpdateCompanySecretLogic) UpdateCompanySecret(req *types.CompanySecretInfo) (resp *types.BaseMsgResp, err error) {

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
	data, err := l.svcCtx.CoreRpc.GetCompanySecretById(l.ctx, &core.IDReq{Id: *req.Id})
	if err != nil {
		return nil, err
	}

	if *data.CompanyId != *userData.CompanyId {
		return nil, errorx.NewCodeInvalidArgumentError(i18n.TargetNotFound)
	}

	updateData, err := l.svcCtx.CoreRpc.UpdateCompanySecret(l.ctx,
		&core.CompanySecretInfo{
			Id:          req.Id,
			Enable:      req.Enable,
			Description: &req.Description,
		})
	if err != nil {
		return nil, err
	}
	return &types.BaseMsgResp{Msg: l.svcCtx.Trans.Trans(l.ctx, updateData.Msg)}, nil
}
