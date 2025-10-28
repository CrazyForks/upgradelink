package upgrade_lnx_upgrade_strategy

import (
	"net/http"

	"github.com/zeromicro/go-zero/rest/httpx"

	"upgradelink-admin-upgrade/server/internal/logic/upgrade_lnx_upgrade_strategy"
	"upgradelink-admin-upgrade/server/internal/svc"
	"upgradelink-admin-upgrade/server/internal/types"
)

// swagger:route post /upgrade_lnx_upgrade_strategy/delete upgrade_lnx_upgrade_strategy DeleteUpgradeLnxUpgradeStrategy
//
// Delete upgrade lnx upgrade strategy information | 删除UpgradeLnxUpgradeStrategy信息
//
// Delete upgrade lnx upgrade strategy information | 删除UpgradeLnxUpgradeStrategy信息
//
// Parameters:
//  + name: body
//    require: true
//    in: body
//    type: IDsReq
//
// Responses:
//  200: BaseMsgResp

func DeleteUpgradeLnxUpgradeStrategyHandler(svcCtx *svc.ServiceContext) http.HandlerFunc {
	return func(w http.ResponseWriter, r *http.Request) {
		var req types.IDsReq
		if err := httpx.Parse(r, &req, true); err != nil {
			httpx.ErrorCtx(r.Context(), w, err)
			return
		}

		l := upgrade_lnx_upgrade_strategy.NewDeleteUpgradeLnxUpgradeStrategyLogic(r.Context(), svcCtx)
		resp, err := l.DeleteUpgradeLnxUpgradeStrategy(&req)
		if err != nil {
			err = svcCtx.Trans.TransError(r.Context(), err)
			httpx.ErrorCtx(r.Context(), w, err)
		} else {
			httpx.OkJsonCtx(r.Context(), w, resp)
		}
	}
}
