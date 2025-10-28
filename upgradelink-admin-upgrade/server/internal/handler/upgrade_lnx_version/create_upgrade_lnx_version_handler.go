package upgrade_lnx_version

import (
	"net/http"

	"github.com/zeromicro/go-zero/rest/httpx"

	"upgradelink-admin-upgrade/server/internal/logic/upgrade_lnx_version"
	"upgradelink-admin-upgrade/server/internal/svc"
	"upgradelink-admin-upgrade/server/internal/types"
)

// swagger:route post /upgrade_lnx_version/create upgrade_lnx_version CreateUpgradeLnxVersion
//
// Create upgrade lnx version information | 创建UpgradeLnxVersion信息
//
// Create upgrade lnx version information | 创建UpgradeLnxVersion信息
//
// Parameters:
//  + name: body
//    require: true
//    in: body
//    type: UpgradeLnxVersionInfo
//
// Responses:
//  200: BaseMsgResp

func CreateUpgradeLnxVersionHandler(svcCtx *svc.ServiceContext) http.HandlerFunc {
	return func(w http.ResponseWriter, r *http.Request) {
		var req types.UpgradeLnxVersionInfo
		if err := httpx.Parse(r, &req, true); err != nil {
			httpx.ErrorCtx(r.Context(), w, err)
			return
		}

		l := upgrade_lnx_version.NewCreateUpgradeLnxVersionLogic(r.Context(), svcCtx)
		resp, err := l.CreateUpgradeLnxVersion(&req)
		if err != nil {
			err = svcCtx.Trans.TransError(r.Context(), err)
			httpx.ErrorCtx(r.Context(), w, err)
		} else {
			httpx.OkJsonCtx(r.Context(), w, resp)
		}
	}
}
