package upgrade_win

import (
	"net/http"

	"github.com/zeromicro/go-zero/rest/httpx"

	"upgradelink-admin-upgrade/server/internal/logic/upgrade_win"
	"upgradelink-admin-upgrade/server/internal/svc"
	"upgradelink-admin-upgrade/server/internal/types"
)

// swagger:route post /upgrade_win/create upgrade_win CreateUpgradeWin
//
// Create upgrade win information | 创建UpgradeWin信息
//
// Create upgrade win information | 创建UpgradeWin信息
//
// Parameters:
//  + name: body
//    require: true
//    in: body
//    type: UpgradeWinInfo
//
// Responses:
//  200: BaseMsgResp

func CreateUpgradeWinHandler(svcCtx *svc.ServiceContext) http.HandlerFunc {
	return func(w http.ResponseWriter, r *http.Request) {
		var req types.UpgradeWinInfo
		if err := httpx.Parse(r, &req, true); err != nil {
			httpx.ErrorCtx(r.Context(), w, err)
			return
		}

		l := upgrade_win.NewCreateUpgradeWinLogic(r.Context(), svcCtx)
		resp, err := l.CreateUpgradeWin(&req)
		if err != nil {
			err = svcCtx.Trans.TransError(r.Context(), err)
			httpx.ErrorCtx(r.Context(), w, err)
		} else {
			httpx.OkJsonCtx(r.Context(), w, resp)
		}
	}
}
