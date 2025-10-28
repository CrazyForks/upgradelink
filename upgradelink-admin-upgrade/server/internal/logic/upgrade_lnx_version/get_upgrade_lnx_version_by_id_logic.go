package upgrade_lnx_version

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

type GetUpgradeLnxVersionByIdLogic struct {
	ctx    context.Context
	svcCtx *svc.ServiceContext
	logx.Logger
}

func NewGetUpgradeLnxVersionByIdLogic(ctx context.Context, svcCtx *svc.ServiceContext) *GetUpgradeLnxVersionByIdLogic {
	return &GetUpgradeLnxVersionByIdLogic{
		ctx:    ctx,
		svcCtx: svcCtx,
		Logger: logx.WithContext(ctx),
	}
}

func (l *GetUpgradeLnxVersionByIdLogic) GetUpgradeLnxVersionById(req *types.IDReq) (*types.UpgradeLnxVersionInfoResp, error) {
	// 获取公司 id
	companyID, err := base.GetCompanyId(l.ctx, l.svcCtx, l.Logger)
	if err != nil {
		return nil, err
	}

	data, err := l.svcCtx.DB.UpgradeLnxVersion.Get(l.ctx, req.Id)
	if err != nil {
		return nil, dberrorhandler.DefaultEntError(l.Logger, err, req)
	}
	// 效验下请求数据是否属于当前操作者
	if data.CompanyID != companyID {
		return nil, errorx.NewCodeInvalidArgumentError(i18n.TargetNotFound)
	}

	lnxData, err := l.svcCtx.DB.UpgradeLnx.Get(l.ctx, data.LnxID)
	if err != nil {
		return nil, dberrorhandler.DefaultEntError(l.Logger, err, req)
	}

	return &types.UpgradeLnxVersionInfoResp{
		BaseDataInfo: types.BaseDataInfo{
			Code: 0,
			Msg:  errormsg.Success,
		},
		Data: types.RespUpgradeLnxVersionInfo{
			Id:            &data.ID,
			LnxName:       &lnxData.Name,
			CloudFileId:   &data.CloudFileID,
			CloudFileName: &lnxData.Name,
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
