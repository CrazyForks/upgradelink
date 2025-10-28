package upgrade_mac_version

import (
	"net/http"

	"github.com/zeromicro/go-zero/rest/httpx"

	"upgradelink-admin-upgrade/server/internal/logic/upgrade_mac_version"
	"upgradelink-admin-upgrade/server/internal/svc"
	"upgradelink-admin-upgrade/server/internal/types"
)

// swagger:route post /upgrade_mac_version/list upgrade_mac_version GetUpgradeMacVersionList
//
// Get upgrade mac version list | 获取UpgradeMacVersion信息列表
//
// Get upgrade mac version list | 获取UpgradeMacVersion信息列表
//
// Parameters:
//  + name: body
//    require: true
//    in: body
//    type: UpgradeMacVersionListReq
//
// Responses:
//  200: UpgradeMacVersionListResp

func GetUpgradeMacVersionListHandler(svcCtx *svc.ServiceContext) http.HandlerFunc {
	return func(w http.ResponseWriter, r *http.Request) {
		var req types.UpgradeMacVersionListReq
		if err := httpx.Parse(r, &req, true); err != nil {
			httpx.ErrorCtx(r.Context(), w, err)
			return
		}

		l := upgrade_mac_version.NewGetUpgradeMacVersionListLogic(r.Context(), svcCtx)
		resp, err := l.GetUpgradeMacVersionList(&req)
		if err != nil {
			err = svcCtx.Trans.TransError(r.Context(), err)
			httpx.ErrorCtx(r.Context(), w, err)
		} else {
			httpx.OkJsonCtx(r.Context(), w, resp)
		}
	}
}
