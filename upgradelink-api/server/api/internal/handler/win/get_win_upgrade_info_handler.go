package win

import (
	"net/http"

	"github.com/zeromicro/go-zero/rest/httpx"
	"upgradelink-api/server/api/internal/logic/win"
	"upgradelink-api/server/api/internal/svc"
	"upgradelink-api/server/api/internal/types"
)

func GetWinUpgradeInfoHandler(svcCtx *svc.ServiceContext) http.HandlerFunc {
	return func(w http.ResponseWriter, r *http.Request) {
		var req types.GetWinUpgradeInfoReq
		if err := httpx.Parse(r, &req); err != nil {
			httpx.ErrorCtx(r.Context(), w, err)
			return
		}

		l := win.NewGetWinUpgradeInfoLogic(r.Context(), svcCtx)
		resp, err := l.GetWinUpgradeInfo(&req)
		if err != nil {
			httpx.ErrorCtx(r.Context(), w, err)
		} else {
			httpx.OkJsonCtx(r.Context(), w, resp)
		}
	}
}
