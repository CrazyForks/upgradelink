package win

import (
	"net/http"

	"upgradelink-api/server/api/internal/logic/win"
	"upgradelink-api/server/api/internal/svc"
	"upgradelink-api/server/api/internal/types"

	"github.com/zeromicro/go-zero/core/trace"
	"github.com/zeromicro/go-zero/rest/httpx"
)

func GetWinVersionInfoHandler(svcCtx *svc.ServiceContext) http.HandlerFunc {
	return func(w http.ResponseWriter, r *http.Request) {
		var req types.GetWinVersionInfoReq
		if err := httpx.Parse(r, &req); err != nil {
			httpx.ErrorCtx(r.Context(), w, err)
			return
		}

		l := win.NewGetWinVersionInfoLogic(r.Context(), svcCtx)
		resp, err := l.GetWinVersionInfo(&req)
		if err != nil {
			httpx.ErrorCtx(r.Context(), w, err)
		} else {
			resp.TraceId = trace.TraceIDFromContext(r.Context())
			httpx.OkJsonCtx(r.Context(), w, resp)
		}
	}
}
