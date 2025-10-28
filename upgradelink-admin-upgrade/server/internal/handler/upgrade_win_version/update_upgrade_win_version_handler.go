package upgrade_win_version

import (
	"net/http"

	"github.com/zeromicro/go-zero/rest/httpx"

	"upgradelink-admin-upgrade/server/internal/logic/upgrade_win_version"
	"upgradelink-admin-upgrade/server/internal/svc"
	"upgradelink-admin-upgrade/server/internal/types"
)

// swagger:route post /upgrade_win_version/update upgrade_win_version UpdateUpgradeWinVersion
//
// Update upgrade win version information | 更新UpgradeWinVersion信息
//
// Update upgrade win version information | 更新UpgradeWinVersion信息
//
// Parameters:
//  + name: body
//    require: true
//    in: body
//    type: UpgradeWinVersionInfo
//
// Responses:
//  200: BaseMsgResp

func UpdateUpgradeWinVersionHandler(svcCtx *svc.ServiceContext) http.HandlerFunc {
	return func(w http.ResponseWriter, r *http.Request) {
		var req types.UpgradeWinVersionInfo
		if err := httpx.Parse(r, &req, true); err != nil {
			httpx.ErrorCtx(r.Context(), w, err)
			return
		}

		l := upgrade_win_version.NewUpdateUpgradeWinVersionLogic(r.Context(), svcCtx)
		resp, err := l.UpdateUpgradeWinVersion(&req)
		if err != nil {
			err = svcCtx.Trans.TransError(r.Context(), err)
			httpx.ErrorCtx(r.Context(), w, err)
		} else {
			httpx.OkJsonCtx(r.Context(), w, resp)
		}
	}
}
