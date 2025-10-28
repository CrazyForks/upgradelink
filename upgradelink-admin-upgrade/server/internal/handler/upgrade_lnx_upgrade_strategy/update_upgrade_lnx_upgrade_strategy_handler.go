package upgrade_lnx_upgrade_strategy

import (
	"net/http"

	"github.com/zeromicro/go-zero/rest/httpx"

	"upgradelink-admin-upgrade/server/internal/logic/upgrade_lnx_upgrade_strategy"
	"upgradelink-admin-upgrade/server/internal/svc"
	"upgradelink-admin-upgrade/server/internal/types"
)

// swagger:route post /upgrade_lnx_upgrade_strategy/update upgrade_lnx_upgrade_strategy UpdateUpgradeLnxUpgradeStrategy
//
// Update upgrade lnx upgrade strategy information | 更新UpgradeLnxUpgradeStrategy信息
//
// Update upgrade lnx upgrade strategy information | 更新UpgradeLnxUpgradeStrategy信息
//
// Parameters:
//  + name: body
//    require: true
//    in: body
//    type: UpgradeLnxUpgradeStrategyInfo
//
// Responses:
//  200: BaseMsgResp

func UpdateUpgradeLnxUpgradeStrategyHandler(svcCtx *svc.ServiceContext) http.HandlerFunc {
	return func(w http.ResponseWriter, r *http.Request) {
		var req types.UpgradeLnxUpgradeStrategyInfo
		if err := httpx.Parse(r, &req, true); err != nil {
			httpx.ErrorCtx(r.Context(), w, err)
			return
		}

		l := upgrade_lnx_upgrade_strategy.NewUpdateUpgradeLnxUpgradeStrategyLogic(r.Context(), svcCtx)
		resp, err := l.UpdateUpgradeLnxUpgradeStrategy(&req)
		if err != nil {
			err = svcCtx.Trans.TransError(r.Context(), err)
			httpx.ErrorCtx(r.Context(), w, err)
		} else {
			httpx.OkJsonCtx(r.Context(), w, resp)
		}
	}
}
