package lnx

import (
	"net/http"

	"upgradelink-api/server/api/internal/logic/lnx"
	"upgradelink-api/server/api/internal/svc"
	"upgradelink-api/server/api/internal/types"

	"github.com/zeromicro/go-zero/core/trace"
	"github.com/zeromicro/go-zero/rest/httpx"
)

func GetLnxVersionInfoHandler(svcCtx *svc.ServiceContext) http.HandlerFunc {
	return func(w http.ResponseWriter, r *http.Request) {
		var req types.GetLnxVersionInfoReq
		if err := httpx.Parse(r, &req); err != nil {
			httpx.ErrorCtx(r.Context(), w, err)
			return
		}

		l := lnx.NewGetLnxVersionInfoLogic(r.Context(), svcCtx)
		resp, err := l.GetLnxVersionInfo(&req)
		if err != nil {
			httpx.ErrorCtx(r.Context(), w, err)
		} else {
			resp.TraceId = trace.TraceIDFromContext(r.Context())
			httpx.OkJsonCtx(r.Context(), w, resp)
		}
	}
}
