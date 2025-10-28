package upgrade_lnx_version

import (
	"net/http"

	"github.com/zeromicro/go-zero/rest/httpx"

	"upgradelink-admin-upgrade/server/internal/logic/upgrade_lnx_version"
	"upgradelink-admin-upgrade/server/internal/svc"
	"upgradelink-admin-upgrade/server/internal/types"
)

// swagger:route post /upgrade_lnx_version/update upgrade_lnx_version UpdateUpgradeLnxVersion
//
// Update upgrade lnx version information | 更新UpgradeLnxVersion信息
//
// Update upgrade lnx version information | 更新UpgradeLnxVersion信息
//
// Parameters:
//  + name: body
//    require: true
//    in: body
//    type: UpgradeLnxVersionInfo
//
// Responses:
//  200: BaseMsgResp

func UpdateUpgradeLnxVersionHandler(svcCtx *svc.ServiceContext) http.HandlerFunc {
	return func(w http.ResponseWriter, r *http.Request) {
		var req types.UpgradeLnxVersionInfo
		if err := httpx.Parse(r, &req, true); err != nil {
			httpx.ErrorCtx(r.Context(), w, err)
			return
		}

		l := upgrade_lnx_version.NewUpdateUpgradeLnxVersionLogic(r.Context(), svcCtx)
		resp, err := l.UpdateUpgradeLnxVersion(&req)
		if err != nil {
			err = svcCtx.Trans.TransError(r.Context(), err)
			httpx.ErrorCtx(r.Context(), w, err)
		} else {
			httpx.OkJsonCtx(r.Context(), w, resp)
		}
	}
}
