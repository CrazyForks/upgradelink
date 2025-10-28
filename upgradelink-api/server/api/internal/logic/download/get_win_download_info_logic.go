package download

import (
	"context"

	"upgradelink-api/server/api/internal/svc"
	"upgradelink-api/server/api/internal/types"

	"github.com/zeromicro/go-zero/core/logx"
)

type GetWinDownloadInfoLogic struct {
	logx.Logger
	ctx    context.Context
	svcCtx *svc.ServiceContext
}

func NewGetWinDownloadInfoLogic(ctx context.Context, svcCtx *svc.ServiceContext) *GetWinDownloadInfoLogic {
	return &GetWinDownloadInfoLogic{
		Logger: logx.WithContext(ctx),
		ctx:    ctx,
		svcCtx: svcCtx,
	}
}

func (l *GetWinDownloadInfoLogic) GetWinDownloadInfo(req *types.GetWinDownloadInfoReq) (resp string, err error) {
	// todo: add your logic here and delete this line

	return
}
