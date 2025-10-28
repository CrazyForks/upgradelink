package upgrade_lnx_version

import (
	"net/http"

	"github.com/zeromicro/go-zero/rest/httpx"

	"upgradelink-admin-upgrade/server/internal/logic/upgrade_lnx_version"
	"upgradelink-admin-upgrade/server/internal/svc"
	"upgradelink-admin-upgrade/server/internal/types"
)

// swagger:route post /upgrade_lnx_version/list upgrade_lnx_version GetUpgradeLnxVersionList
//
// Get upgrade lnx version list | 获取UpgradeLnxVersion信息列表
//
// Get upgrade lnx version list | 获取UpgradeLnxVersion信息列表
//
// Parameters:
//  + name: body
//    require: true
//    in: body
//    type: UpgradeLnxVersionListReq
//
// Responses:
//  200: UpgradeLnxVersionListResp

func GetUpgradeLnxVersionListHandler(svcCtx *svc.ServiceContext) http.HandlerFunc {
	return func(w http.ResponseWriter, r *http.Request) {
		var req types.UpgradeLnxVersionListReq
		if err := httpx.Parse(r, &req, true); err != nil {
			httpx.ErrorCtx(r.Context(), w, err)
			return
		}

		l := upgrade_lnx_version.NewGetUpgradeLnxVersionListLogic(r.Context(), svcCtx)
		resp, err := l.GetUpgradeLnxVersionList(&req)
		if err != nil {
			err = svcCtx.Trans.TransError(r.Context(), err)
			httpx.ErrorCtx(r.Context(), w, err)
		} else {
			httpx.OkJsonCtx(r.Context(), w, resp)
		}
	}
}
