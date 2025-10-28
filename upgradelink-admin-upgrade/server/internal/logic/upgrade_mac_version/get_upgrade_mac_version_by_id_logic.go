package upgrade_mac_version

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

type GetUpgradeMacVersionByIdLogic struct {
	ctx    context.Context
	svcCtx *svc.ServiceContext
	logx.Logger
}

func NewGetUpgradeMacVersionByIdLogic(ctx context.Context, svcCtx *svc.ServiceContext) *GetUpgradeMacVersionByIdLogic {
	return &GetUpgradeMacVersionByIdLogic{
		ctx:    ctx,
		svcCtx: svcCtx,
		Logger: logx.WithContext(ctx),
	}
}

func (l *GetUpgradeMacVersionByIdLogic) GetUpgradeMacVersionById(req *types.IDReq) (*types.UpgradeMacVersionInfoResp, error) {
	// 获取公司 id
	companyID, err := base.GetCompanyId(l.ctx, l.svcCtx, l.Logger)
	if err != nil {
		return nil, err
	}

	data, err := l.svcCtx.DB.UpgradeMacVersion.Get(l.ctx, req.Id)
	if err != nil {
		return nil, dberrorhandler.DefaultEntError(l.Logger, err, req)
	}
	// 效验下请求数据是否属于当前操作者
	if data.CompanyID != companyID {
		return nil, errorx.NewCodeInvalidArgumentError(i18n.TargetNotFound)
	}

	macData, err := l.svcCtx.DB.UpgradeMac.Get(l.ctx, data.MACID)
	if err != nil {
		return nil, dberrorhandler.DefaultEntError(l.Logger, err, req)
	}

	return &types.UpgradeMacVersionInfoResp{
		BaseDataInfo: types.BaseDataInfo{
			Code: 0,
			Msg:  errormsg.Success,
		},
		Data: types.RespUpgradeMacVersionInfo{
			Id:            &data.ID,
			MacName:       &macData.Name,
			CloudFileId:   &data.CloudFileID,
			CloudFileName: &macData.Name,
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
