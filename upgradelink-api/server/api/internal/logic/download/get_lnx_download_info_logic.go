package download

import (
	"context"

	"upgradelink-api/server/api/internal/svc"
	"upgradelink-api/server/api/internal/types"

	"github.com/zeromicro/go-zero/core/logx"
)

type GetLnxDownloadInfoLogic struct {
	logx.Logger
	ctx    context.Context
	svcCtx *svc.ServiceContext
}

func NewGetLnxDownloadInfoLogic(ctx context.Context, svcCtx *svc.ServiceContext) *GetLnxDownloadInfoLogic {
	return &GetLnxDownloadInfoLogic{
		Logger: logx.WithContext(ctx),
		ctx:    ctx,
		svcCtx: svcCtx,
	}
}

func (l *GetLnxDownloadInfoLogic) GetLnxDownloadInfo(req *types.GetLnxDownloadInfoReq) (resp string, err error) {
	// todo: add your logic here and delete this line

	return
}
