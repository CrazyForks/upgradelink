package upgrade_lnx

import (
	"net/http"

	"github.com/zeromicro/go-zero/rest/httpx"

	"upgradelink-admin-upgrade/server/internal/logic/upgrade_lnx"
	"upgradelink-admin-upgrade/server/internal/svc"
	"upgradelink-admin-upgrade/server/internal/types"
)

// swagger:route post /upgrade_lnx/list upgrade_lnx GetUpgradeLnxList
//
// Get upgrade lnx list | 获取UpgradeLnx信息列表
//
// Get upgrade lnx list | 获取UpgradeLnx信息列表
//
// Parameters:
//  + name: body
//    require: true
//    in: body
//    type: UpgradeLnxListReq
//
// Responses:
//  200: UpgradeLnxListResp

func GetUpgradeLnxListHandler(svcCtx *svc.ServiceContext) http.HandlerFunc {
	return func(w http.ResponseWriter, r *http.Request) {
		var req types.UpgradeLnxListReq
		if err := httpx.Parse(r, &req, true); err != nil {
			httpx.ErrorCtx(r.Context(), w, err)
			return
		}

		l := upgrade_lnx.NewGetUpgradeLnxListLogic(r.Context(), svcCtx)
		resp, err := l.GetUpgradeLnxList(&req)
		if err != nil {
			err = svcCtx.Trans.TransError(r.Context(), err)
			httpx.ErrorCtx(r.Context(), w, err)
		} else {
			httpx.OkJsonCtx(r.Context(), w, resp)
		}
	}
}
