package upgrade_win

import (
	"net/http"

	"github.com/zeromicro/go-zero/rest/httpx"

	"upgradelink-admin-upgrade/server/internal/logic/upgrade_win"
	"upgradelink-admin-upgrade/server/internal/svc"
	"upgradelink-admin-upgrade/server/internal/types"
)

// swagger:route post /upgrade_win/list upgrade_win GetUpgradeWinList
//
// Get upgrade win list | 获取UpgradeWin信息列表
//
// Get upgrade win list | 获取UpgradeWin信息列表
//
// Parameters:
//  + name: body
//    require: true
//    in: body
//    type: UpgradeWinListReq
//
// Responses:
//  200: UpgradeWinListResp

func GetUpgradeWinListHandler(svcCtx *svc.ServiceContext) http.HandlerFunc {
	return func(w http.ResponseWriter, r *http.Request) {
		var req types.UpgradeWinListReq
		if err := httpx.Parse(r, &req, true); err != nil {
			httpx.ErrorCtx(r.Context(), w, err)
			return
		}

		l := upgrade_win.NewGetUpgradeWinListLogic(r.Context(), svcCtx)
		resp, err := l.GetUpgradeWinList(&req)
		if err != nil {
			err = svcCtx.Trans.TransError(r.Context(), err)
			httpx.ErrorCtx(r.Context(), w, err)
		} else {
			httpx.OkJsonCtx(r.Context(), w, resp)
		}
	}
}
