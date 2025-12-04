package file

import (
	"context"
	"errors"
	"upgradelink-api/server/api/internal/common"
	"upgradelink-api/server/api/internal/common/http_handlers"
	"upgradelink-api/server/api/internal/resource/model"

	"upgradelink-api/server/api/internal/svc"
	"upgradelink-api/server/api/internal/types"

	"github.com/zeromicro/go-zero/core/logx"
)

type GetFileVersionInfoLogic struct {
	logx.Logger
	ctx    context.Context
	svcCtx *svc.ServiceContext
}

func NewGetFileVersionInfoLogic(ctx context.Context, svcCtx *svc.ServiceContext) *GetFileVersionInfoLogic {
	return &GetFileVersionInfoLogic{
		Logger: logx.WithContext(ctx),
		ctx:    ctx,
		svcCtx: svcCtx,
	}
}

func (l *GetFileVersionInfoLogic) GetFileVersionInfo(req *types.GetFileVersionInfoReq) (resp *types.GetFileVersionInfoResp, err error) {
	// 请求参数效验
	if req.FileKey == "" {
		return nil, http_handlers.NewLinkErr(l.ctx, http_handlers.ErrParamInvalid, common.ErrFile4Msg, common.ErrFile4Docs)
	}
	if req.VersionCode == 0 {
		return nil, http_handlers.NewLinkErr(l.ctx, http_handlers.ErrParamInvalid, common.ErrFile4Msg, common.ErrFile4Docs)
	}

	var res types.GetFileVersionInfoResp

	// 通过唯一标识 获取到对应的应用信息
	fileInfo, err := l.svcCtx.ResourceCtx.GetFileInfoByKey(l.ctx, req.FileKey)
	if err != nil && errors.Is(err, model.ErrNotFound) {
		return nil, http_handlers.NewLinkErr(l.ctx, http_handlers.ErrNotFound, common.ErrFile2Msg, common.ErrFile2Docs)
	} else if err != nil {
		return nil, http_handlers.NewLinkErr(l.ctx, http_handlers.ErrInternalServerError, common.Err1Msg, common.Err1Docs)
	}

	fileVersionInfo, err := l.svcCtx.ResourceCtx.GetFileVersionInfoByFileIdAndVersionCode(l.ctx, fileInfo.Id, req.VersionCode)
	if err != nil && errors.Is(err, model.ErrNotFound) {
		return nil, http_handlers.NewLinkErr(l.ctx, http_handlers.ErrNotFound, common.ErrFile3Msg, common.ErrFile3Docs)
	} else if err != nil {
		return nil, http_handlers.NewLinkErr(l.ctx, http_handlers.ErrInternalServerError, common.Err1Msg, common.Err1Docs)
	}

	res.Code = 200
	res.Msg = ""
	res.Data = types.GetFileVersionInfoRespData{
		FileKey:     fileInfo.Key,
		VersionName: fileVersionInfo.VersionName,
		VersionCode: fileVersionInfo.VersionCode,
		Description: fileVersionInfo.Description,
	}
	return &res, nil
}
