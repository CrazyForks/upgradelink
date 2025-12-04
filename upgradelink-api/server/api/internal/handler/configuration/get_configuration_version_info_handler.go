package configuration

import (
	"net/http"

	"upgradelink-api/server/api/internal/logic/configuration"
	"upgradelink-api/server/api/internal/svc"
	"upgradelink-api/server/api/internal/types"

	"github.com/zeromicro/go-zero/core/trace"
	"github.com/zeromicro/go-zero/rest/httpx"
)

func GetConfigurationVersionInfoHandler(svcCtx *svc.ServiceContext) http.HandlerFunc {
	return func(w http.ResponseWriter, r *http.Request) {
		var req types.GetConfigurationVersionInfoReq
		if err := httpx.Parse(r, &req); err != nil {
			httpx.ErrorCtx(r.Context(), w, err)
			return
		}

		l := configuration.NewGetConfigurationVersionInfoLogic(r.Context(), svcCtx)
		resp, err := l.GetConfigurationVersionInfo(&req)
		if err != nil {
			httpx.ErrorCtx(r.Context(), w, err)
		} else {
			resp.TraceId = trace.TraceIDFromContext(r.Context())
			httpx.OkJsonCtx(r.Context(), w, resp)
		}
	}
}
