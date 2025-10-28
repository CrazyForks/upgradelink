package upgrade_win

import (
	"net/http"

	"github.com/zeromicro/go-zero/rest/httpx"

	"upgradelink-admin-upgrade/server/internal/logic/upgrade_win"
	"upgradelink-admin-upgrade/server/internal/svc"
	"upgradelink-admin-upgrade/server/internal/types"
)

// swagger:route post /upgrade_win/update upgrade_win UpdateUpgradeWin
//
// Update upgrade win information | 更新UpgradeWin信息
//
// Update upgrade win information | 更新UpgradeWin信息
//
// Parameters:
//  + name: body
//    require: true
//    in: body
//    type: UpgradeWinInfo
//
// Responses:
//  200: BaseMsgResp

func UpdateUpgradeWinHandler(svcCtx *svc.ServiceContext) http.HandlerFunc {
	return func(w http.ResponseWriter, r *http.Request) {
		var req types.UpgradeWinInfo
		if err := httpx.Parse(r, &req, true); err != nil {
			httpx.ErrorCtx(r.Context(), w, err)
			return
		}

		l := upgrade_win.NewUpdateUpgradeWinLogic(r.Context(), svcCtx)
		resp, err := l.UpdateUpgradeWin(&req)
		if err != nil {
			err = svcCtx.Trans.TransError(r.Context(), err)
			httpx.ErrorCtx(r.Context(), w, err)
		} else {
			httpx.OkJsonCtx(r.Context(), w, resp)
		}
	}
}
