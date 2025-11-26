package constant

// PatchStatus 定义 patch 任务状态枚举

const (
	PatchStatusNotProcessed         = 0 // 尚未进行差分处理
	PatchStatusProcessing           = 1 // 正在处理差分
	PatchStatusError                = 2 // 差分过程错误
	PatchStatusTimeout              = 3 // 差分过程超时
	PatchStatusInvalidPatch         = 4 // 差分包有问题
	PatchStatusSuccess              = 5 // 差分处理成功
	PatchStatusPatchGreaterThanFull = 6 // 差分包大于新版本全量包
	PatchStatusUploading            = 7 // 上传文件中
	PatchStatusUploadFailed         = 8 // 上传文件失败
	PatchStatusCompleted            = 9 // 处理完成
)

// 文件本地存放地址
const (
	STORAGE_PATH      = "/link/upgradelink-admin-task/static/" // 文件存储的服务器目录
	DOWNLOAD_APK_PATH = "download/apk/"                        // 下载APK路径
	PATCH_PATH        = "patch/"                               // 生成PATCH路径
	MERGE_PATH        = "patch/apk/"                           // 生成合并包路径

	PATCH_FILE_SUFFIX = ".patch" // 差分包文件后缀
	MERGE_FILE_SUFFIX = ".apk"   // 合并包文件后缀

	DOMAIN_NAME         = "http://test.backend.upgrade.letv.com" //项目域名
	CDN_UPlOAD_URL      = "http://mcache.oss.letv.com/ext/addfile"
	CDN_UPLOAD_USER     = "scloud_apk_upgrade_test"
	CDN_UPLOAD_ARGS     = "?platid=%d&splatid=%d"
	CND_HOST            = "g3.letv.cn"
	CDN_UPLOAD_CDN_HOST = "http://" + CND_HOST + "/"
	CDN_FILE_STATUS     = "http://fid.oss.letv.com/ext/refresh?key="
	STATIC_REQUEST_URL  = "/upgrade/backend/v1/static/" // 静态文件请求路径
	DOWNLOAD_PATCH_PATH = "download/patch/"             // 下载PATCH路径
	SWARM_PATH          = STORAGE_PATH + "swarm"        // swarm文件本地存储路径
	TXT_FILE_SUFFIX     = ".txt"                        // 文本文件后缀
)
