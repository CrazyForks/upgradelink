package resource

import (
	"context"
	"fmt"

	"upgradelink-api/server/api/internal/resource/model"

	"github.com/zeromicro/go-zero/core/stores/sqlx"
)

const (
	CacheKeyLnxVersionListByLnxIdAndArchAndVersionCode = PREFIX + "LNX_VERSION_LIST:LNX_ID:%v:ARCH:%v:VERSION_CODE:%v"
	CacheKeyLnxVersionInfoById                         = PREFIX + "LNX_VERSION_INFO:ID:%v"
	CacheKeyLnxVersionLastInfoByLnxId                  = PREFIX + "LNX_VERSION_LAST_INFO:LNX_ID:%v"
	CacheKeyLnxVersionInfoByLnxIdAndArchAndVersionCode = PREFIX + "LNX_VERSION_INFO:LNX_ID:%v:ARCH:%v:VERSION_CODE:%v"
)

// GetLnxVersionListByLnxIdAndArchAndVersionCode
// 获取大于 versionCode 的版本列表
func (c *Ctx) GetLnxVersionListByLnxIdAndArchAndVersionCode(ctx context.Context, lnxId int64, arch string, versionCode int64) ([]*model.UpgradeLnxVersion, error) {

	cacheKey := fmt.Sprintf(CacheKeyLnxVersionListByLnxIdAndArchAndVersionCode, lnxId, arch, versionCode)

	// 内存缓存
	v, err := c.localCache.Take(cacheKey, func() (interface{}, error) {
		// sql 缓存查询
		var LnxVersionList []*model.UpgradeLnxVersion
		query := fmt.Sprintf("select * from upgrade_lnx_version where `lnx_id` = ? and `arch` = ?  and is_del = 0 and `version_code` > ? order by version_code desc ")
		err := c.mysqlConnCache.QueryRowCtx(ctx, &LnxVersionList, cacheKey, func(ctx context.Context, conn sqlx.SqlConn, v any) error {
			return c.mysqlConn.QueryRowsCtx(ctx, &LnxVersionList, query, lnxId, arch, versionCode)
		})

		if err != nil {
			return nil, err
		}
		return LnxVersionList, nil
	})

	if v != nil {
		list := v.([]*model.UpgradeLnxVersion)
		return list, err
	}

	return nil, err
}

// GetLnxVersionLastInfoByLnxId
// 获取最新版本的信息
func (c *Ctx) GetLnxVersionLastInfoByLnxId(ctx context.Context, lnxId int64) (*model.UpgradeLnxVersion, error) {

	cacheKey := fmt.Sprintf(CacheKeyLnxVersionLastInfoByLnxId, lnxId)

	// 内存缓存
	v, err := c.localCache.Take(cacheKey, func() (interface{}, error) {
		// sql 缓存查询
		var info model.UpgradeLnxVersion
		query := fmt.Sprintf("select * from upgrade_lnx_version where `lnx_id` = ? and is_del = 0 order by version_code desc limit 1")
		err := c.mysqlConnCache.QueryRowCtx(ctx, &info, cacheKey, func(ctx context.Context, conn sqlx.SqlConn, v any) error {
			return c.mysqlConn.QueryRowCtx(ctx, &info, query, lnxId)
		})

		if err != nil {
			return nil, err
		}
		return info, nil
	})

	if v != nil {
		info := v.(model.UpgradeLnxVersion)
		return &info, err
	}

	return nil, err
}

// 获取固定版本的信息
func (c *Ctx) GetLnxVersionInfoByLnxIdAndArchAndVersionCode(ctx context.Context, lnxId int64, arch string, versionCode int64) (*model.UpgradeLnxVersion, error) {

	cacheKey := fmt.Sprintf(CacheKeyLnxVersionInfoByLnxIdAndArchAndVersionCode, lnxId, arch, versionCode)

	// 内存缓存
	v, err := c.localCache.Take(cacheKey, func() (interface{}, error) {
		// sql 缓存查询
		var info model.UpgradeLnxVersion
		query := fmt.Sprintf("select * from upgrade_lnx_version where `lnx_id` = ? and `arch` = ? and is_del = 0 and `version_code` = ? LIMIT 1")
		err := c.mysqlConnCache.QueryRowCtx(ctx, &info, cacheKey, func(ctx context.Context, conn sqlx.SqlConn, v any) error {
			return c.mysqlConn.QueryRowCtx(ctx, &info, query, lnxId, arch, versionCode)
		})

		if err != nil {
			return nil, err
		}
		return info, nil
	})

	if v != nil {
		info := v.(model.UpgradeLnxVersion)
		return &info, err
	}

	return nil, err
}

// GetLnxVersionInfoById
// 通过 lnx version id 获取信息
func (c *Ctx) GetLnxVersionInfoById(ctx context.Context,
	id int64) (*model.UpgradeLnxVersion, error) {

	cacheKey := fmt.Sprintf(CacheKeyLnxVersionInfoById, id)

	// 内存缓存
	v, err := c.localCache.Take(cacheKey, func() (interface{}, error) {
		// sql 缓存查询
		var info model.UpgradeLnxVersion
		query := fmt.Sprintf("select * from upgrade_lnx_version where `id` = ?  limit 1")
		err := c.mysqlConnCache.QueryRowCtx(ctx, &info, cacheKey, func(ctx context.Context, conn sqlx.SqlConn, v any) error {
			return c.mysqlConn.QueryRowCtx(ctx, v, query, id)
		})
		if err != nil {
			return nil, err
		}

		return info, nil
	})

	if v != nil {
		info := v.(model.UpgradeLnxVersion)
		return &info, err
	}

	return nil, err
}
