package upgrade_mac

import (
	"net/http"

	"github.com/zeromicro/go-zero/rest/httpx"

	"upgradelink-admin-upgrade/server/internal/logic/upgrade_mac"
	"upgradelink-admin-upgrade/server/internal/svc"
	"upgradelink-admin-upgrade/server/internal/types"
)

// swagger:route post /upgrade_mac/create upgrade_mac CreateUpgradeMac
//
// Create upgrade mac information | 创建UpgradeMac信息
//
// Create upgrade mac information | 创建UpgradeMac信息
//
// Parameters:
//  + name: body
//    require: true
//    in: body
//    type: UpgradeMacInfo
//
// Responses:
//  200: BaseMsgResp

func CreateUpgradeMacHandler(svcCtx *svc.ServiceContext) http.HandlerFunc {
	return func(w http.ResponseWriter, r *http.Request) {
		var req types.UpgradeMacInfo
		if err := httpx.Parse(r, &req, true); err != nil {
			httpx.ErrorCtx(r.Context(), w, err)
			return
		}

		l := upgrade_mac.NewCreateUpgradeMacLogic(r.Context(), svcCtx)
		resp, err := l.CreateUpgradeMac(&req)
		if err != nil {
			err = svcCtx.Trans.TransError(r.Context(), err)
			httpx.ErrorCtx(r.Context(), w, err)
		} else {
			httpx.OkJsonCtx(r.Context(), w, resp)
		}
	}
}
