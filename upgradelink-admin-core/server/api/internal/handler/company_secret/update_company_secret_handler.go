package company_secret

import (
	"net/http"

	"github.com/zeromicro/go-zero/rest/httpx"

	"upgradelink-admin-core/server/api/internal/logic/company_secret"
	"upgradelink-admin-core/server/api/internal/svc"
	"upgradelink-admin-core/server/api/internal/types"
)

// swagger:route post /company_secret/update company_secret UpdateCompanySecret
//
// Update company_secret information | 更新字典
//
// Update company_secret information | 更新字典
//
// Parameters:
//  + name: body
//    require: true
//    in: body
//    type: CompanySecretInfo
//
// Responses:
//  200: BaseMsgResp

func UpdateCompanySecretHandler(svcCtx *svc.ServiceContext) http.HandlerFunc {
	return func(w http.ResponseWriter, r *http.Request) {
		var req types.CompanySecretInfo
		if err := httpx.Parse(r, &req, true); err != nil {
			httpx.ErrorCtx(r.Context(), w, err)
			return
		}

		l := company_secret.NewUpdateCompanySecretLogic(r.Context(), svcCtx)
		resp, err := l.UpdateCompanySecret(&req)
		if err != nil {
			err = svcCtx.Trans.TransError(r.Context(), err)
			httpx.ErrorCtx(r.Context(), w, err)
		} else {
			httpx.OkJsonCtx(r.Context(), w, resp)
		}
	}
}
