package tauri

import (
	"context"
	"errors"
	"upgradelink-api/server/api/internal/common"
	"upgradelink-api/server/api/internal/common/http_handlers"
	"upgradelink-api/server/api/internal/config"
	"upgradelink-api/server/api/internal/resource/model"

	"upgradelink-api/server/api/internal/svc"
	"upgradelink-api/server/api/internal/types"

	"github.com/zeromicro/go-zero/core/logx"
)

type GetTauriVersionInfoLogic struct {
	logx.Logger
	ctx    context.Context
	svcCtx *svc.ServiceContext
}

func NewGetTauriVersionInfoLogic(ctx context.Context, svcCtx *svc.ServiceContext) *GetTauriVersionInfoLogic {
	return &GetTauriVersionInfoLogic{
		Logger: logx.WithContext(ctx),
		ctx:    ctx,
		svcCtx: svcCtx,
	}
}

func (l *GetTauriVersionInfoLogic) GetTauriVersionInfo(req *types.GetTauriVersionInfoReq) (resp *types.GetTauriVersionInfoResp, err error) {
	// 请求参数效验
	if req.TauriKey == "" {
		return nil, http_handlers.NewLinkErr(l.ctx, http_handlers.ErrParamInvalid, config.Err100Msg, config.Err100Docs)
	}

	if req.VersionName == "" {
		return nil, http_handlers.NewLinkErr(l.ctx, http_handlers.ErrParamInvalid, config.Err101Msg, config.Err101Docs)
	}
	versionCode, err := common.SemVerToInt64(req.VersionName)
	if err != nil {
		return nil, http_handlers.NewLinkErr(l.ctx, http_handlers.ErrParamInvalid, config.Err101Msg, config.Err101Docs)
	}

	var res types.GetTauriVersionInfoResp

	// 通过唯一标识 获取到对应的应用信息
	tauriInfo, err := l.svcCtx.ResourceCtx.GetTauriInfoByKey(l.ctx, req.TauriKey)
	if err != nil && errors.Is(err, model.ErrNotFound) {
		return nil, http_handlers.NewLinkErr(l.ctx, http_handlers.ErrNotFound, config.Err102Msg, config.Err102Docs)
	} else if err != nil {
		return nil, http_handlers.NewLinkErr(l.ctx, http_handlers.ErrInternalServerError, config.Err1Msg, config.Err1Docs)
	}

	// 获取版本信息
	tauriVersionInfo, err := l.svcCtx.ResourceCtx.GetTauriVersionInfoByTauriIdAndVersionCodeAndTargetAndArch(l.ctx, tauriInfo.Id, versionCode, req.Target, req.Arch)
	if err != nil && errors.Is(err, model.ErrNotFound) {
		return nil, http_handlers.NewLinkErr(l.ctx, http_handlers.ErrNotFound, config.Err103Msg, config.Err103Docs)
	} else if err != nil {
		return nil, http_handlers.NewLinkErr(l.ctx, http_handlers.ErrParamInvalid, config.Err100Msg, config.Err100Docs)
	}

	res.Code = 200
	res.Msg = ""
	res.Data = types.GetTauriVersionInfoRespData{
		TauriKey:    tauriInfo.Key,
		VersionName: tauriVersionInfo.VersionName,
		VersionCode: tauriVersionInfo.VersionCode,
		Description: tauriVersionInfo.Description,
		Target:      tauriVersionInfo.Target,
		Arch:        tauriVersionInfo.Arch,
	}
	
	return &res, nil
}
