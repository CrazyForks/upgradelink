package upgrade_lnx_upgrade_strategy

import (
	"net/http"

	"github.com/zeromicro/go-zero/rest/httpx"

	"upgradelink-admin-upgrade/server/internal/logic/upgrade_lnx_upgrade_strategy"
	"upgradelink-admin-upgrade/server/internal/svc"
	"upgradelink-admin-upgrade/server/internal/types"
)

// swagger:route post /upgrade_lnx_upgrade_strategy/create upgrade_lnx_upgrade_strategy CreateUpgradeLnxUpgradeStrategy
//
// Create upgrade lnx upgrade strategy information | 创建UpgradeLnxUpgradeStrategy信息
//
// Create upgrade lnx upgrade strategy information | 创建UpgradeLnxUpgradeStrategy信息
//
// Parameters:
//  + name: body
//    require: true
//    in: body
//    type: UpgradeLnxUpgradeStrategyInfo
//
// Responses:
//  200: BaseMsgResp

func CreateUpgradeLnxUpgradeStrategyHandler(svcCtx *svc.ServiceContext) http.HandlerFunc {
	return func(w http.ResponseWriter, r *http.Request) {
		var req types.UpgradeLnxUpgradeStrategyInfo
		if err := httpx.Parse(r, &req, true); err != nil {
			httpx.ErrorCtx(r.Context(), w, err)
			return
		}

		l := upgrade_lnx_upgrade_strategy.NewCreateUpgradeLnxUpgradeStrategyLogic(r.Context(), svcCtx)
		resp, err := l.CreateUpgradeLnxUpgradeStrategy(&req)
		if err != nil {
			err = svcCtx.Trans.TransError(r.Context(), err)
			httpx.ErrorCtx(r.Context(), w, err)
		} else {
			httpx.OkJsonCtx(r.Context(), w, resp)
		}
	}
}
