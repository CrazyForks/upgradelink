package upgrade_mac

import (
	"net/http"

	"github.com/zeromicro/go-zero/rest/httpx"

	"upgradelink-admin-upgrade/server/internal/logic/upgrade_mac"
	"upgradelink-admin-upgrade/server/internal/svc"
	"upgradelink-admin-upgrade/server/internal/types"
)

// swagger:route post /upgrade_mac/list upgrade_mac GetUpgradeMacList
//
// Get upgrade mac list | 获取UpgradeMac信息列表
//
// Get upgrade mac list | 获取UpgradeMac信息列表
//
// Parameters:
//  + name: body
//    require: true
//    in: body
//    type: UpgradeMacListReq
//
// Responses:
//  200: UpgradeMacListResp

func GetUpgradeMacListHandler(svcCtx *svc.ServiceContext) http.HandlerFunc {
	return func(w http.ResponseWriter, r *http.Request) {
		var req types.UpgradeMacListReq
		if err := httpx.Parse(r, &req, true); err != nil {
			httpx.ErrorCtx(r.Context(), w, err)
			return
		}

		l := upgrade_mac.NewGetUpgradeMacListLogic(r.Context(), svcCtx)
		resp, err := l.GetUpgradeMacList(&req)
		if err != nil {
			err = svcCtx.Trans.TransError(r.Context(), err)
			httpx.ErrorCtx(r.Context(), w, err)
		} else {
			httpx.OkJsonCtx(r.Context(), w, resp)
		}
	}
}
