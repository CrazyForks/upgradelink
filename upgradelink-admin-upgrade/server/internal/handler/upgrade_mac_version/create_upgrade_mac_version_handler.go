package upgrade_mac_version

import (
	"net/http"

	"github.com/zeromicro/go-zero/rest/httpx"

	"upgradelink-admin-upgrade/server/internal/logic/upgrade_mac_version"
	"upgradelink-admin-upgrade/server/internal/svc"
	"upgradelink-admin-upgrade/server/internal/types"
)

// swagger:route post /upgrade_mac_version/create upgrade_mac_version CreateUpgradeMacVersion
//
// Create upgrade mac version information | 创建UpgradeMacVersion信息
//
// Create upgrade mac version information | 创建UpgradeMacVersion信息
//
// Parameters:
//  + name: body
//    require: true
//    in: body
//    type: UpgradeMacVersionInfo
//
// Responses:
//  200: BaseMsgResp

func CreateUpgradeMacVersionHandler(svcCtx *svc.ServiceContext) http.HandlerFunc {
	return func(w http.ResponseWriter, r *http.Request) {
		var req types.UpgradeMacVersionInfo
		if err := httpx.Parse(r, &req, true); err != nil {
			httpx.ErrorCtx(r.Context(), w, err)
			return
		}

		l := upgrade_mac_version.NewCreateUpgradeMacVersionLogic(r.Context(), svcCtx)
		resp, err := l.CreateUpgradeMacVersion(&req)
		if err != nil {
			err = svcCtx.Trans.TransError(r.Context(), err)
			httpx.ErrorCtx(r.Context(), w, err)
		} else {
			httpx.OkJsonCtx(r.Context(), w, resp)
		}
	}
}
