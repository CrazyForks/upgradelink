package upgrade_lnx

import (
	"net/http"

	"github.com/zeromicro/go-zero/rest/httpx"

	"upgradelink-admin-upgrade/server/internal/logic/upgrade_lnx"
	"upgradelink-admin-upgrade/server/internal/svc"
	"upgradelink-admin-upgrade/server/internal/types"
)

// swagger:route post /upgrade_lnx/update upgrade_lnx UpdateUpgradeLnx
//
// Update upgrade lnx information | 更新UpgradeLnx信息
//
// Update upgrade lnx information | 更新UpgradeLnx信息
//
// Parameters:
//  + name: body
//    require: true
//    in: body
//    type: UpgradeLnxInfo
//
// Responses:
//  200: BaseMsgResp

func UpdateUpgradeLnxHandler(svcCtx *svc.ServiceContext) http.HandlerFunc {
	return func(w http.ResponseWriter, r *http.Request) {
		var req types.UpgradeLnxInfo
		if err := httpx.Parse(r, &req, true); err != nil {
			httpx.ErrorCtx(r.Context(), w, err)
			return
		}

		l := upgrade_lnx.NewUpdateUpgradeLnxLogic(r.Context(), svcCtx)
		resp, err := l.UpdateUpgradeLnx(&req)
		if err != nil {
			err = svcCtx.Trans.TransError(r.Context(), err)
			httpx.ErrorCtx(r.Context(), w, err)
		} else {
			httpx.OkJsonCtx(r.Context(), w, resp)
		}
	}
}
