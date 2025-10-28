package upgrade_win_upgrade_strategy

import (
	"net/http"

	"github.com/zeromicro/go-zero/rest/httpx"

	"upgradelink-admin-upgrade/server/internal/logic/upgrade_win_upgrade_strategy"
	"upgradelink-admin-upgrade/server/internal/svc"
	"upgradelink-admin-upgrade/server/internal/types"
)

// swagger:route post /upgrade_win_upgrade_strategy/list upgrade_win_upgrade_strategy GetUpgradeWinUpgradeStrategyList
//
// Get upgrade win upgrade strategy list | 获取UpgradeWinUpgradeStrategy信息列表
//
// Get upgrade win upgrade strategy list | 获取UpgradeWinUpgradeStrategy信息列表
//
// Parameters:
//  + name: body
//    require: true
//    in: body
//    type: UpgradeWinUpgradeStrategyListReq
//
// Responses:
//  200: UpgradeWinUpgradeStrategyListResp

func GetUpgradeWinUpgradeStrategyListHandler(svcCtx *svc.ServiceContext) http.HandlerFunc {
	return func(w http.ResponseWriter, r *http.Request) {
		var req types.UpgradeWinUpgradeStrategyListReq
		if err := httpx.Parse(r, &req, true); err != nil {
			httpx.ErrorCtx(r.Context(), w, err)
			return
		}

		l := upgrade_win_upgrade_strategy.NewGetUpgradeWinUpgradeStrategyListLogic(r.Context(), svcCtx)
		resp, err := l.GetUpgradeWinUpgradeStrategyList(&req)
		if err != nil {
			err = svcCtx.Trans.TransError(r.Context(), err)
			httpx.ErrorCtx(r.Context(), w, err)
		} else {
			httpx.OkJsonCtx(r.Context(), w, resp)
		}
	}
}
