package upgrade_win_version

import (
	"net/http"

	"github.com/zeromicro/go-zero/rest/httpx"

	"upgradelink-admin-upgrade/server/internal/logic/upgrade_win_version"
	"upgradelink-admin-upgrade/server/internal/svc"
	"upgradelink-admin-upgrade/server/internal/types"
)

// swagger:route post /upgrade_win_version/list upgrade_win_version GetUpgradeWinVersionList
//
// Get upgrade win version list | 获取UpgradeWinVersion信息列表
//
// Get upgrade win version list | 获取UpgradeWinVersion信息列表
//
// Parameters:
//  + name: body
//    require: true
//    in: body
//    type: UpgradeWinVersionListReq
//
// Responses:
//  200: UpgradeWinVersionListResp

func GetUpgradeWinVersionListHandler(svcCtx *svc.ServiceContext) http.HandlerFunc {
	return func(w http.ResponseWriter, r *http.Request) {
		var req types.UpgradeWinVersionListReq
		if err := httpx.Parse(r, &req, true); err != nil {
			httpx.ErrorCtx(r.Context(), w, err)
			return
		}

		l := upgrade_win_version.NewGetUpgradeWinVersionListLogic(r.Context(), svcCtx)
		resp, err := l.GetUpgradeWinVersionList(&req)
		if err != nil {
			err = svcCtx.Trans.TransError(r.Context(), err)
			httpx.ErrorCtx(r.Context(), w, err)
		} else {
			httpx.OkJsonCtx(r.Context(), w, resp)
		}
	}
}
