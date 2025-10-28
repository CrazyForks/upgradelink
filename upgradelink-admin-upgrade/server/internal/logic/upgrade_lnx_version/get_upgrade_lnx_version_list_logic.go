package upgrade_lnx_version

import (
	"context"
	"fmt"
	"time"
	"upgradelink-admin-upgrade/server/internal/utils"

	"upgradelink-admin-upgrade/server/ent/predicate"
	"upgradelink-admin-upgrade/server/ent/upgradelnxversion"
	"upgradelink-admin-upgrade/server/internal/logic/base"
	"upgradelink-admin-upgrade/server/internal/svc"
	"upgradelink-admin-upgrade/server/internal/types"
	"upgradelink-admin-upgrade/server/internal/utils/dberrorhandler"

	"github.com/suyuan32/simple-admin-common/msg/errormsg"

	"github.com/suyuan32/simple-admin-common/utils/pointy"
	"github.com/zeromicro/go-zero/core/logx"
)

type GetUpgradeLnxVersionListLogic struct {
	ctx    context.Context
	svcCtx *svc.ServiceContext
	logx.Logger
}

func NewGetUpgradeLnxVersionListLogic(ctx context.Context, svcCtx *svc.ServiceContext) *GetUpgradeLnxVersionListLogic {
	return &GetUpgradeLnxVersionListLogic{
		ctx:    ctx,
		svcCtx: svcCtx,
		Logger: logx.WithContext(ctx),
	}
}

func (l *GetUpgradeLnxVersionListLogic) GetUpgradeLnxVersionList(req *types.UpgradeLnxVersionListReq) (*types.UpgradeLnxVersionListResp, error) {
	var predicates []predicate.UpgradeLnxVersion

	// 获取公司 id
	companyID, err := base.GetCompanyId(l.ctx, l.svcCtx, l.Logger)
	if err != nil {
		return nil, err
	}
	predicates = append(predicates, upgradelnxversion.CompanyIDEQ(companyID))

	// 删除状态
	predicates = append(predicates, upgradelnxversion.IsDelEQ(0))

	if req.LnxId != nil {
		predicates = append(predicates, upgradelnxversion.LnxIDEQ(*req.LnxId))
	}
	if req.CloudFileId != nil {
		predicates = append(predicates, upgradelnxversion.CloudFileIDContains(*req.CloudFileId))
	}
	if req.VersionName != nil {
		predicates = append(predicates, upgradelnxversion.VersionNameContains(*req.VersionName))
	}
	if req.VersionCode != nil {
		predicates = append(predicates, upgradelnxversion.VersionCodeEQ(*req.VersionCode))
	}
	if req.Description != nil {
		predicates = append(predicates, upgradelnxversion.DescriptionContains(*req.Description))
	}
	if req.IsDel != nil {
		predicates = append(predicates, upgradelnxversion.IsDelEQ(*req.IsDel))
	}
	if req.CreateAt != nil {
		predicates = append(predicates, upgradelnxversion.CreateAtGTE(time.UnixMilli(*req.CreateAt)))
	}
	if req.UpdateAt != nil {
		predicates = append(predicates, upgradelnxversion.UpdateAtGTE(time.UnixMilli(*req.UpdateAt)))
	}
	data, err := l.svcCtx.DB.UpgradeLnxVersion.Query().Where(predicates...).Page(l.ctx, req.Page, req.PageSize)

	if err != nil {
		return nil, dberrorhandler.DefaultEntError(l.Logger, err, req)
	}

	resp := &types.UpgradeLnxVersionListResp{}
	resp.Msg = errormsg.Success
	resp.Data.Total = data.PageDetails.Total

	for _, v := range data.List {

		fileData, err := l.svcCtx.DB.UpgradeLnx.Get(l.ctx, v.LnxID)
		if err != nil {
			return nil, dberrorhandler.DefaultEntError(l.Logger, err, req)
		}

		cloudFileData, err := l.svcCtx.DB.FmsCloudFile.Get(l.ctx, v.CloudFileID)
		if err != nil {
			fmt.Println("err: ", err)
			return nil, dberrorhandler.DefaultEntError(l.Logger, err, req)
		}

		// 文件大小
		fileSize := utils.BytesToMBString(cloudFileData.Size)

		resp.Data.Data = append(resp.Data.Data,
			types.RespUpgradeLnxVersionInfo{
				Id:              &v.ID,
				LnxId:           &v.LnxID,
				LnxName:         &fileData.Name,
				CloudFileId:     &v.CloudFileID,
				CloudFileName:   &cloudFileData.Name,
				VersionName:     &v.VersionName,
				VersionCode:     &v.VersionCode,
				Arch:            &v.Arch,
				VersionFileSize: &fileSize,
				Description:     &v.Description,
				IsDel:           &v.IsDel,
				CreateAt:        pointy.GetUnixMilliPointer(v.CreateAt.UnixMilli()),
				UpdateAt:        pointy.GetUnixMilliPointer(v.UpdateAt.UnixMilli()),
			})
	}

	return resp, nil
}
