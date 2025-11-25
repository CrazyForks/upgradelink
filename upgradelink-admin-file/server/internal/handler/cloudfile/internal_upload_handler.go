package cloudfile

import (
	"net/http"

	"github.com/zeromicro/go-zero/rest/httpx"

	"upgradelink-admin-file/server/internal/logic/cloudfile"
	"upgradelink-admin-file/server/internal/svc"
)

// swagger:route post /cloud_file/internal_upload cloudfile InternalUpload
//
// Cloud file upload | 内部系统上传文件
//
// Cloud file upload | 内部系统上传文件
//
// Responses:
//  200: CloudFileInfoResp

func InternalUploadHandler(svcCtx *svc.ServiceContext) http.HandlerFunc {
	return func(w http.ResponseWriter, r *http.Request) {
		l := cloudfile.NewInternalUploadLogic(r.Context(), svcCtx)
		resp, err := l.InternalUpload()
		if err != nil {
			err = svcCtx.Trans.TransError(r.Context(), err)
			httpx.ErrorCtx(r.Context(), w, err)
		} else {
			httpx.OkJsonCtx(r.Context(), w, resp)
		}
	}
}
