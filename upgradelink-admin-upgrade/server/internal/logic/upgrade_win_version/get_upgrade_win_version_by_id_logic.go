package upgrade_win_version

import (
	"context"

	"upgradelink-admin-upgrade/server/internal/logic/base"
	"upgradelink-admin-upgrade/server/internal/svc"
	"upgradelink-admin-upgrade/server/internal/types"
	"upgradelink-admin-upgrade/server/internal/utils/dberrorhandler"

	"github.com/suyuan32/simple-admin-common/i18n"
	"github.com/suyuan32/simple-admin-common/msg/errormsg"
	"github.com/zeromicro/go-zero/core/errorx"

	"github.com/suyuan32/simple-admin-common/utils/pointy"
	"github.com/zeromicro/go-zero/core/logx"
)

type GetUpgradeWinVersionByIdLogic struct {
	ctx    context.Context
	svcCtx *svc.ServiceContext
	logx.Logger
}

func NewGetUpgradeWinVersionByIdLogic(ctx context.Context, svcCtx *svc.ServiceContext) *GetUpgradeWinVersionByIdLogic {
	return &GetUpgradeWinVersionByIdLogic{
		ctx:    ctx,
		svcCtx: svcCtx,
		Logger: logx.WithContext(ctx),
	}
}

func (l *GetUpgradeWinVersionByIdLogic) GetUpgradeWinVersionById(req *types.IDReq) (*types.UpgradeWinVersionInfoResp, error) {
	// 获取公司 id
	companyID, err := base.GetCompanyId(l.ctx, l.svcCtx, l.Logger)
	if err != nil {
		return nil, err
	}

	data, err := l.svcCtx.DB.UpgradeWinVersion.Get(l.ctx, req.Id)
	if err != nil {
		return nil, dberrorhandler.DefaultEntError(l.Logger, err, req)
	}
	// 效验下请求数据是否属于当前操作者
	if data.CompanyID != companyID {
		return nil, errorx.NewCodeInvalidArgumentError(i18n.TargetNotFound)
	}

	winData, err := l.svcCtx.DB.UpgradeWin.Get(l.ctx, data.WinID)
	if err != nil {
		return nil, dberrorhandler.DefaultEntError(l.Logger, err, req)
	}

	return &types.UpgradeWinVersionInfoResp{
		BaseDataInfo: types.BaseDataInfo{
			Code: 0,
			Msg:  errormsg.Success,
		},
		Data: types.RespUpgradeWinVersionInfo{
			Id:            &data.ID,
			WinName:       &winData.Name,
			CloudFileId:   &data.CloudFileID,
			CloudFileName: &winData.Name,
			VersionName:   &data.VersionName,
			VersionCode:   &data.VersionCode,
			Arch:          &data.Arch,
			Description:   &data.Description,
			IsDel:         &data.IsDel,
			CreateAt:      pointy.GetUnixMilliPointer(data.CreateAt.UnixMilli()),
			UpdateAt:      pointy.GetUnixMilliPointer(data.UpdateAt.UnixMilli()),
		},
	}, nil
}
