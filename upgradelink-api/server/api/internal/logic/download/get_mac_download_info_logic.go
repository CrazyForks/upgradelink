package download

import (
	"context"

	"upgradelink-api/server/api/internal/svc"
	"upgradelink-api/server/api/internal/types"

	"github.com/zeromicro/go-zero/core/logx"
)

type GetMacDownloadInfoLogic struct {
	logx.Logger
	ctx    context.Context
	svcCtx *svc.ServiceContext
}

func NewGetMacDownloadInfoLogic(ctx context.Context, svcCtx *svc.ServiceContext) *GetMacDownloadInfoLogic {
	return &GetMacDownloadInfoLogic{
		Logger: logx.WithContext(ctx),
		ctx:    ctx,
		svcCtx: svcCtx,
	}
}

func (l *GetMacDownloadInfoLogic) GetMacDownloadInfo(req *types.GetMacDownloadInfoReq) (resp string, err error) {
	// todo: add your logic here and delete this line

	return
}
