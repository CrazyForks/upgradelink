package file_api

import (
	"bytes"
	"context"
	"encoding/json"
	"fmt"
	"io"
	"mime/multipart"
	"net/http"
	"os"
	"path/filepath"
	"upgradelink-admin-task/server/task/internal/svc"
)

const InternalUploadUri = "/cloud_file/internal_upload"

type InternalUploadResp struct {
	Code int    `json:"code"`
	Msg  string `json:"msg"`
	Data struct {
		Id string `json:"id"`
	} `json:"data"`
}

// InternalUpload 调用文件上传接口
func InternalUpload(ctx context.Context, svcCtx *svc.ServiceContext, filePath string) (*InternalUploadResp, error) {
	// 1. 打开本地文件
	file, err := os.Open(filePath)
	if err != nil {
		return nil, fmt.Errorf("InternalUpload failed to open file: %w", err)
	}
	defer file.Close() // 确保文件最终被关闭

	// 2. 创建multipart请求体
	var requestBody bytes.Buffer
	writer := multipart.NewWriter(&requestBody)

	// 3. 创建文件表单字段（字段名设为"file"，与接口期望一致）
	part, err := writer.CreateFormFile("file", filepath.Base(filePath))
	if err != nil {
		return nil, fmt.Errorf("InternalUpload failed to create form file field: %w", err)
	}

	// 4. 将文件内容复制到表单字段中
	if _, err := io.Copy(part, file); err != nil {
		return nil, fmt.Errorf("InternalUpload failed to copy file content: %w", err)
	}

	// 5. 关闭multipart writer（会写入结束边界）
	if err := writer.Close(); err != nil {
		return nil, fmt.Errorf("InternalUpload failed to close multipart writer: %w", err)
	}

	// 6. 创建HTTP POST请求
	req, err := http.NewRequest("POST", svcCtx.Config.FileApi+InternalUploadUri, &requestBody)
	if err != nil {
		return nil, fmt.Errorf("InternalUpload failed to create request: %w", err)
	}

	// 7. 设置Content-Type（必须包含multipart的boundary）
	req.Header.Set("Content-Type", writer.FormDataContentType())

	// 8. 发送请求
	client := &http.Client{}
	resp, err := client.Do(req)
	if err != nil {
		return nil, fmt.Errorf("InternalUpload failed to send request: %w", err)
	}
	defer resp.Body.Close() // 确保响应体最终被关闭

	// 9. 读取响应内容
	respBody, err := io.ReadAll(resp.Body)
	if err != nil {
		return nil, fmt.Errorf("InternalUpload failed to read response: %w", err)
	}

	// 10. 解析JSON响应到结构体
	var uploadResp InternalUploadResp
	if err := json.Unmarshal(respBody, &uploadResp); err != nil {
		return nil, fmt.Errorf("InternalUpload failed to parse response JSON: %w, response content: %s", err, string(respBody))
	}

	if uploadResp.Code != 0 {
		return nil, fmt.Errorf("InternalUpload failed with code %d: %s", uploadResp.Code, string(respBody))
	}

	return &uploadResp, nil
}
