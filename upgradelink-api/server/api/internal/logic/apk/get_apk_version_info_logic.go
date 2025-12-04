package apk

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

type GetApkVersionInfoLogic struct {
	logx.Logger
	ctx    context.Context
	svcCtx *svc.ServiceContext
}

func NewGetApkVersionInfoLogic(ctx context.Context, svcCtx *svc.ServiceContext) *GetApkVersionInfoLogic {
	return &GetApkVersionInfoLogic{
		Logger: logx.WithContext(ctx),
		ctx:    ctx,
		svcCtx: svcCtx,
	}
}

func (l *GetApkVersionInfoLogic) GetApkVersionInfo(req *types.GetApkVersionInfoReq) (resp *types.GetApkVersionInfoResp, err error) {

	// 请求参数效验
	if req.ApkKey == "" {
		return nil, http_handlers.NewLinkErr(l.ctx, http_handlers.ErrParamInvalid, common.ErrApk4Msg, common.ErrApk4Docs)
	}
	if req.VersionCode == 0 {
		return nil, http_handlers.NewLinkErr(l.ctx, http_handlers.ErrParamInvalid, common.ErrApk4Msg, common.ErrApk4Docs)
	}

	var res types.GetApkVersionInfoResp

	// 通过唯一标识 获取到对应的应用信息
	apkInfo, err := l.svcCtx.ResourceCtx.GetApkInfoByKey(l.ctx, req.ApkKey)
	if err != nil && errors.Is(err, model.ErrNotFound) {
		return nil, http_handlers.NewLinkErr(l.ctx, http_handlers.ErrNotFound, common.ErrApk2Msg, common.ErrApk2Docs)
	} else if err != nil {
		return nil, http_handlers.NewLinkErr(l.ctx, http_handlers.ErrInternalServerError, common.Err1Msg, common.Err1Docs)
	}

	apkVersionInfo, err := l.svcCtx.ResourceCtx.GetApkVersionInfoByApkIdAndVersionCode(l.ctx, apkInfo.Id, req.VersionCode)
	if err != nil && errors.Is(err, model.ErrNotFound) {
		return nil, http_handlers.NewLinkErr(l.ctx, http_handlers.ErrNotFound, common.ErrApk3Msg, common.ErrApk3Docs)
	} else if err != nil {
		return nil, http_handlers.NewLinkErr(l.ctx, http_handlers.ErrParamInvalid, common.Err1Msg, common.Err1Docs)
	}

	res.Code = 200
	res.Msg = ""
	res.Data = types.GetApkVersionInfoRespData{
		ApkKey:      apkInfo.Key,
		PackageName: apkInfo.PackageName,
		VersionName: apkVersionInfo.VersionName,
		VersionCode: apkVersionInfo.VersionCode,
		Description: apkVersionInfo.Description,
	}
	return &res, nil
}
