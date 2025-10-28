package company_secret

import (
	"net/http"

	"github.com/zeromicro/go-zero/rest/httpx"

	"upgradelink-admin-core/server/api/internal/logic/company_secret"
	"upgradelink-admin-core/server/api/internal/svc"
	"upgradelink-admin-core/server/api/internal/types"
)

// swagger:route post /company_secret company_secret GetCompanySecretById
//
// Get CompanySecretby ID | 通过ID获取字典
//
// Get CompanySecretby ID | 通过ID获取字典
//
// Parameters:
//  + name: body
//    require: true
//    in: body
//    type: IDReq
//
// Responses:
//  200: CompanySecretInfoResp

func GetCompanySecretByIdHandler(svcCtx *svc.ServiceContext) http.HandlerFunc {
	return func(w http.ResponseWriter, r *http.Request) {
		var req types.IDReq
		if err := httpx.Parse(r, &req, true); err != nil {
			httpx.ErrorCtx(r.Context(), w, err)
			return
		}

		l := company_secret.NewGetCompanySecretByIdLogic(r.Context(), svcCtx)
		resp, err := l.GetCompanySecretById(&req)
		if err != nil {
			err = svcCtx.Trans.TransError(r.Context(), err)
			httpx.ErrorCtx(r.Context(), w, err)
		} else {
			httpx.OkJsonCtx(r.Context(), w, resp)
		}
	}
}
