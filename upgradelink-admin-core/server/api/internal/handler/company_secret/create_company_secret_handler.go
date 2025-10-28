package company_secret

import (
	"net/http"

	"github.com/zeromicro/go-zero/rest/httpx"

	"upgradelink-admin-core/server/api/internal/logic/company_secret"
	"upgradelink-admin-core/server/api/internal/svc"
	"upgradelink-admin-core/server/api/internal/types"
)

// swagger:route post /company_secret/create company_secret CreateCompanySecret
//
// Create CompanySecret information | 创建字典
//
// Create CompanySecret information | 创建字典
//
// Parameters:
//  + name: body
//    require: true
//    in: body
//    type: CompanySecretInfo
//
// Responses:
//  200: BaseMsgResp

func CreateCompanySecretHandler(svcCtx *svc.ServiceContext) http.HandlerFunc {
	return func(w http.ResponseWriter, r *http.Request) {
		var req types.CompanySecretInfo
		if err := httpx.Parse(r, &req, true); err != nil {
			httpx.ErrorCtx(r.Context(), w, err)
			return
		}

		l := company_secret.NewCreateCompanySecretLogic(r.Context(), svcCtx)
		resp, err := l.CreateCompanySecret(&req)
		if err != nil {
			err = svcCtx.Trans.TransError(r.Context(), err)
			httpx.ErrorCtx(r.Context(), w, err)
		} else {
			httpx.OkJsonCtx(r.Context(), w, resp)
		}
	}
}
