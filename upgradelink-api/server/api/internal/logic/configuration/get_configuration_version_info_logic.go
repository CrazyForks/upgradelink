package configuration

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

type GetConfigurationVersionInfoLogic struct {
	logx.Logger
	ctx    context.Context
	svcCtx *svc.ServiceContext
}

func NewGetConfigurationVersionInfoLogic(ctx context.Context, svcCtx *svc.ServiceContext) *GetConfigurationVersionInfoLogic {
	return &GetConfigurationVersionInfoLogic{
		Logger: logx.WithContext(ctx),
		ctx:    ctx,
		svcCtx: svcCtx,
	}
}

func (l *GetConfigurationVersionInfoLogic) GetConfigurationVersionInfo(req *types.GetConfigurationVersionInfoReq) (resp *types.GetConfigurationVersionInfoResp, err error) {
	// 请求参数效验
	if req.ConfigurationKey == "" {
		return nil, http_handlers.NewLinkErr(l.ctx, http_handlers.ErrParamInvalid, common.ErrConfiguration4Msg, common.ErrConfiguration4Docs)
	}
	if req.VersionCode == 0 {
		return nil, http_handlers.NewLinkErr(l.ctx, http_handlers.ErrParamInvalid, common.ErrConfiguration4Msg, common.ErrConfiguration4Docs)
	}

	var res types.GetConfigurationVersionInfoResp

	// 通过唯一标识 获取到对应的应用信息
	configurationInfo, err := l.svcCtx.ResourceCtx.GetConfigurationInfoByKey(l.ctx, req.ConfigurationKey)
	if err != nil && errors.Is(err, model.ErrNotFound) {
		return nil, http_handlers.NewLinkErr(l.ctx, http_handlers.ErrNotFound, common.ErrConfiguration2Msg, common.ErrConfiguration2Docs)
	} else if err != nil {
		return nil, http_handlers.NewLinkErr(l.ctx, http_handlers.ErrInternalServerError, common.Err1Msg, common.Err1Docs)
	}

	configurationVersionInfo, err := l.svcCtx.ResourceCtx.GetConfigurationVersionInfoByConfigurationIdAndVersionCode(l.ctx, configurationInfo.Id, req.VersionCode)
	if err != nil && errors.Is(err, model.ErrNotFound) {
		return nil, http_handlers.NewLinkErr(l.ctx, http_handlers.ErrNotFound, common.ErrConfiguration3Msg, common.ErrConfiguration3Docs)
	} else if err != nil {
		return nil, http_handlers.NewLinkErr(l.ctx, http_handlers.ErrInternalServerError, common.Err1Msg, common.Err1Docs)
	}

	res.Code = 200
	res.Msg = ""
	res.Data = types.GetConfigurationVersionInfoRespData{
		ConfigurationKey: configurationInfo.Key,
		VersionName:      configurationVersionInfo.VersionName,
		VersionCode:      configurationVersionInfo.VersionCode,
		Description:      configurationVersionInfo.Description,
	}
	return &res, nil
}
