package upgrade_win_version

import (
	"net/http"

	"github.com/zeromicro/go-zero/rest/httpx"

	"upgradelink-admin-upgrade/server/internal/logic/upgrade_win_version"
	"upgradelink-admin-upgrade/server/internal/svc"
	"upgradelink-admin-upgrade/server/internal/types"
)

// swagger:route post /upgrade_win_version/create upgrade_win_version CreateUpgradeWinVersion
//
// Create upgrade win version information | 创建UpgradeWinVersion信息
//
// Create upgrade win version information | 创建UpgradeWinVersion信息
//
// Parameters:
//  + name: body
//    require: true
//    in: body
//    type: UpgradeWinVersionInfo
//
// Responses:
//  200: BaseMsgResp

func CreateUpgradeWinVersionHandler(svcCtx *svc.ServiceContext) http.HandlerFunc {
	return func(w http.ResponseWriter, r *http.Request) {
		var req types.UpgradeWinVersionInfo
		if err := httpx.Parse(r, &req, true); err != nil {
			httpx.ErrorCtx(r.Context(), w, err)
			return
		}

		l := upgrade_win_version.NewCreateUpgradeWinVersionLogic(r.Context(), svcCtx)
		resp, err := l.CreateUpgradeWinVersion(&req)
		if err != nil {
			err = svcCtx.Trans.TransError(r.Context(), err)
			httpx.ErrorCtx(r.Context(), w, err)
		} else {
			httpx.OkJsonCtx(r.Context(), w, resp)
		}
	}
}
