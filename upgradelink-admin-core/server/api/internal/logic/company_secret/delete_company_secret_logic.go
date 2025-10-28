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

type DeleteCompanySecretLogic struct {
	logx.Logger
	ctx    context.Context
	svcCtx *svc.ServiceContext
}

func NewDeleteCompanySecretLogic(ctx context.Context, svcCtx *svc.ServiceContext) *DeleteCompanySecretLogic {
	return &DeleteCompanySecretLogic{
		Logger: logx.WithContext(ctx),
		ctx:    ctx,
		svcCtx: svcCtx,
	}
}

func (l *DeleteCompanySecretLogic) DeleteCompanySecret(req *types.IDsReq) (resp *types.BaseMsgResp, err error) {

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

	// 效验下请求数据是否属于当前操作者
	for _, id := range req.Ids {
		data, err := l.svcCtx.CoreRpc.GetCompanySecretById(l.ctx, &core.IDReq{Id: id})
		if err != nil {
			return nil, err
		}
		if *data.CompanyId != *userData.CompanyId {
			return nil, errorx.NewCodeInvalidArgumentError(i18n.TargetNotFound)
		}
	}

	uint32IsDel := uint32(1)

	result := &core.BaseResp{}
	for _, delId := range req.Ids {
		result, err = l.svcCtx.CoreRpc.UpdateCompanySecret(l.ctx,
			&core.CompanySecretInfo{
				Id:    &delId,
				IsDel: &uint32IsDel,
			})
		if err != nil {
			return nil, err
		}
	}

	return &types.BaseMsgResp{Msg: l.svcCtx.Trans.Trans(l.ctx, result.Msg)}, nil
}
