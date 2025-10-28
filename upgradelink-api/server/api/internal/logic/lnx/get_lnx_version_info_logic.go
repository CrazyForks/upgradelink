package lnx

import (
	"context"
	"errors"
	"upgradelink-api/server/api/internal/common/http_handlers"
	"upgradelink-api/server/api/internal/config"
	"upgradelink-api/server/api/internal/resource/model"

	"upgradelink-api/server/api/internal/svc"
	"upgradelink-api/server/api/internal/types"

	"github.com/zeromicro/go-zero/core/logx"
)

type GetLnxVersionInfoLogic struct {
	logx.Logger
	ctx    context.Context
	svcCtx *svc.ServiceContext
}

func NewGetLnxVersionInfoLogic(ctx context.Context, svcCtx *svc.ServiceContext) *GetLnxVersionInfoLogic {
	return &GetLnxVersionInfoLogic{
		Logger: logx.WithContext(ctx),
		ctx:    ctx,
		svcCtx: svcCtx,
	}
}

func (l *GetLnxVersionInfoLogic) GetLnxVersionInfo(req *types.GetLnxVersionInfoReq) (resp *types.GetLnxVersionInfoResp, err error) {

	// 请求参数效验
	if req.LnxKey == "" {
		return nil, http_handlers.NewLinkErr(l.ctx, http_handlers.ErrParamInvalid, config.Err300Msg, config.Err300Docs)
	}
	if req.VersionCode == 0 {
		return nil, http_handlers.NewLinkErr(l.ctx, http_handlers.ErrParamInvalid, config.Err301Msg, config.Err301Docs)
	}

	var res types.GetLnxVersionInfoResp

	// 通过唯一标识 获取到对应的应用信息
	lnxInfo, err := l.svcCtx.ResourceCtx.GetLnxInfoByKey(l.ctx, req.LnxKey)
	if err != nil && errors.Is(err, model.ErrNotFound) {
		return nil, http_handlers.NewLinkErr(l.ctx, http_handlers.ErrNotFound, config.Err302Msg, config.Err302Docs)
	} else if err != nil {
		return nil, http_handlers.NewLinkErr(l.ctx, http_handlers.ErrInternalServerError, config.Err1Msg, config.Err1Docs)
	}

	lnxVersionInfo, err := l.svcCtx.ResourceCtx.GetLnxVersionInfoByLnxIdAndArchAndVersionCode(l.ctx, lnxInfo.Id, req.Arch, req.VersionCode)
	if err != nil && errors.Is(err, model.ErrNotFound) {
		return nil, http_handlers.NewLinkErr(l.ctx, http_handlers.ErrNotFound, config.Err103Msg, config.Err103Docs)
	} else if err != nil {
		return nil, http_handlers.NewLinkErr(l.ctx, http_handlers.ErrParamInvalid, config.Err100Msg, config.Err100Docs)
	}

	res.Code = 200
	res.Msg = ""
	res.Data = types.GetLnxVersionInfoRespData{
		LnxKey:      lnxInfo.Key,
		PackageName: lnxInfo.PackageName,
		VersionName: lnxVersionInfo.VersionName,
		VersionCode: lnxVersionInfo.VersionCode,
		Description: lnxVersionInfo.Description,
	}
	return &res, nil
}
