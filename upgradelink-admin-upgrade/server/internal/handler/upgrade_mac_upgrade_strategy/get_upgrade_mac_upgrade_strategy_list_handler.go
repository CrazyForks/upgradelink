package upgrade_mac_upgrade_strategy

import (
	"net/http"

	"github.com/zeromicro/go-zero/rest/httpx"

	"upgradelink-admin-upgrade/server/internal/logic/upgrade_mac_upgrade_strategy"
	"upgradelink-admin-upgrade/server/internal/svc"
	"upgradelink-admin-upgrade/server/internal/types"
)

// swagger:route post /upgrade_mac_upgrade_strategy/list upgrade_mac_upgrade_strategy GetUpgradeMacUpgradeStrategyList
//
// Get upgrade mac upgrade strategy list | 获取UpgradeMacUpgradeStrategy信息列表
//
// Get upgrade mac upgrade strategy list | 获取UpgradeMacUpgradeStrategy信息列表
//
// Parameters:
//  + name: body
//    require: true
//    in: body
//    type: UpgradeMacUpgradeStrategyListReq
//
// Responses:
//  200: UpgradeMacUpgradeStrategyListResp

func GetUpgradeMacUpgradeStrategyListHandler(svcCtx *svc.ServiceContext) http.HandlerFunc {
	return func(w http.ResponseWriter, r *http.Request) {
		var req types.UpgradeMacUpgradeStrategyListReq
		if err := httpx.Parse(r, &req, true); err != nil {
			httpx.ErrorCtx(r.Context(), w, err)
			return
		}

		l := upgrade_mac_upgrade_strategy.NewGetUpgradeMacUpgradeStrategyListLogic(r.Context(), svcCtx)
		resp, err := l.GetUpgradeMacUpgradeStrategyList(&req)
		if err != nil {
			err = svcCtx.Trans.TransError(r.Context(), err)
			httpx.ErrorCtx(r.Context(), w, err)
		} else {
			httpx.OkJsonCtx(r.Context(), w, resp)
		}
	}
}
