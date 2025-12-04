package url

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

type GetUrlVersionInfoLogic struct {
	logx.Logger
	ctx    context.Context
	svcCtx *svc.ServiceContext
}

func NewGetUrlVersionInfoLogic(ctx context.Context, svcCtx *svc.ServiceContext) *GetUrlVersionInfoLogic {
	return &GetUrlVersionInfoLogic{
		Logger: logx.WithContext(ctx),
		ctx:    ctx,
		svcCtx: svcCtx,
	}
}

func (l *GetUrlVersionInfoLogic) GetUrlVersionInfo(req *types.GetUrlVersionInfoReq) (resp *types.GetUrlVersionInfoResp, err error) {
	// 请求参数效验
	if req.UrlKey == "" {
		return nil, http_handlers.NewLinkErr(l.ctx, http_handlers.ErrParamInvalid, common.ErrUrl4Msg, common.ErrUrl4Docs)
	}
	if req.VersionCode == 0 {
		return nil, http_handlers.NewLinkErr(l.ctx, http_handlers.ErrParamInvalid, common.ErrUrl4Msg, common.ErrUrl4Docs)
	}

	var res types.GetUrlVersionInfoResp

	// 通过唯一标识 获取到对应的应用信息
	urlInfo, err := l.svcCtx.ResourceCtx.GetUrlInfoByKey(l.ctx, req.UrlKey)
	if err != nil && errors.Is(err, model.ErrNotFound) {
		return nil, http_handlers.NewLinkErr(l.ctx, http_handlers.ErrNotFound, common.ErrUrl2Msg, common.ErrUrl2Docs)
	} else if err != nil {
		return nil, http_handlers.NewLinkErr(l.ctx, http_handlers.ErrInternalServerError, common.Err1Msg, common.Err1Docs)
	}

	urlVersionInfo, err := l.svcCtx.ResourceCtx.GetUrlVersionInfoByUrlIdAndVersionCode(l.ctx, urlInfo.Id, req.VersionCode)
	if err != nil && errors.Is(err, model.ErrNotFound) {
		return nil, http_handlers.NewLinkErr(l.ctx, http_handlers.ErrNotFound, common.ErrUrl3Msg, common.ErrUrl3Docs)
	} else if err != nil {
		return nil, http_handlers.NewLinkErr(l.ctx, http_handlers.ErrInternalServerError, common.Err1Msg, common.Err1Docs)
	}

	res.Code = 200
	res.Msg = ""
	res.Data = types.GetUrlVersionInfoRespData{
		UrlKey:      urlInfo.Key,
		VersionName: urlVersionInfo.VersionName,
		VersionCode: urlVersionInfo.VersionCode,
		Description: urlVersionInfo.Description,
	}

	return &res, nil
}
