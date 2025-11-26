package hello

import (
	"net/http"

	"github.com/zeromicro/go-zero/rest/httpx"
	"upgradelink-admin-task/server/task/internal/logic/hello"
	"upgradelink-admin-task/server/task/internal/svc"
	"upgradelink-admin-task/server/task/internal/types"
)

func HelloHandler(svcCtx *svc.ServiceContext) http.HandlerFunc {
	return func(w http.ResponseWriter, r *http.Request) {
		var req types.GetHelloReq
		if err := httpx.Parse(r, &req); err != nil {
			httpx.ErrorCtx(r.Context(), w, err)
			return
		}

		l := hello.NewHelloLogic(r.Context(), svcCtx)
		resp, err := l.Hello(&req)
		if err != nil {
			httpx.ErrorCtx(r.Context(), w, err)
		} else {
			httpx.OkJsonCtx(r.Context(), w, resp)
		}
	}
}
