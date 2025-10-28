package resource

import (
	"context"
	"fmt"

	"upgradelink-api/server/api/internal/resource/model"

	"github.com/zeromicro/go-zero/core/stores/sqlx"
)

const (
	CacheKeyMacVersionListByMacIdAndArchAndVersionCode = PREFIX + "MAC_VERSION_LIST:MAC_ID:%v:ARCH:%v:VERSION_CODE:%v"
	CacheKeyMacVersionInfoById                         = PREFIX + "MAC_VERSION_INFO:ID:%v"
	CacheKeyMacVersionLastInfoByMacId                  = PREFIX + "MAC_VERSION_LAST_INFO:MAC_ID:%v"
	CacheKeyMacVersionInfoByMacIdAndArchAndVersionCode = PREFIX + "MAC_VERSION_INFO:MAC_ID:%v:ARCH:%v:VERSION_CODE:%v"
)

// GetMacVersionListByMacIdAndArchAndVersionCode
// 获取大于 versionCode 的版本列表
func (c *Ctx) GetMacVersionListByMacIdAndArchAndVersionCode(ctx context.Context, macId int64, arch string, versionCode int64) ([]*model.UpgradeMacVersion, error) {

	cacheKey := fmt.Sprintf(CacheKeyMacVersionListByMacIdAndArchAndVersionCode, macId, arch, versionCode)

	// 内存缓存
	v, err := c.localCache.Take(cacheKey, func() (interface{}, error) {
		// sql 缓存查询
		var MacVersionList []*model.UpgradeMacVersion
		query := fmt.Sprintf("select * from upgrade_mac_version where `mac_id` = ? and `arch` = ?  and is_del = 0 and `version_code` > ? order by version_code desc ")
		err := c.mysqlConnCache.QueryRowCtx(ctx, &MacVersionList, cacheKey, func(ctx context.Context, conn sqlx.SqlConn, v any) error {
			return c.mysqlConn.QueryRowsCtx(ctx, &MacVersionList, query, macId, arch, versionCode)
		})

		if err != nil {
			return nil, err
		}
		return MacVersionList, nil
	})

	if v != nil {
		list := v.([]*model.UpgradeMacVersion)
		return list, err
	}

	return nil, err
}

// GetMacVersionLastInfoByMacId
// 获取最新版本的信息
func (c *Ctx) GetMacVersionLastInfoByMacId(ctx context.Context, macId int64) (*model.UpgradeMacVersion, error) {

	cacheKey := fmt.Sprintf(CacheKeyMacVersionLastInfoByMacId, macId)

	// 内存缓存
	v, err := c.localCache.Take(cacheKey, func() (interface{}, error) {
		// sql 缓存查询
		var info model.UpgradeMacVersion
		query := fmt.Sprintf("select * from upgrade_mac_version where `mac_id` = ? and is_del = 0 order by version_code desc limit 1")
		err := c.mysqlConnCache.QueryRowCtx(ctx, &info, cacheKey, func(ctx context.Context, conn sqlx.SqlConn, v any) error {
			return c.mysqlConn.QueryRowCtx(ctx, &info, query, macId)
		})

		if err != nil {
			return nil, err
		}
		return info, nil
	})

	if v != nil {
		info := v.(model.UpgradeMacVersion)
		return &info, err
	}

	return nil, err
}

// 获取固定版本的信息
func (c *Ctx) GetMacVersionInfoByMacIdAndArchAndVersionCode(ctx context.Context, macId int64, arch string, versionCode int64) (*model.UpgradeMacVersion, error) {

	cacheKey := fmt.Sprintf(CacheKeyMacVersionInfoByMacIdAndArchAndVersionCode, macId, arch, versionCode)

	// 内存缓存
	v, err := c.localCache.Take(cacheKey, func() (interface{}, error) {
		// sql 缓存查询
		var info model.UpgradeMacVersion
		query := fmt.Sprintf("select * from upgrade_mac_version where `mac_id` = ? and `arch` = ? and is_del = 0 and `version_code` = ? LIMIT 1")
		err := c.mysqlConnCache.QueryRowCtx(ctx, &info, cacheKey, func(ctx context.Context, conn sqlx.SqlConn, v any) error {
			return c.mysqlConn.QueryRowCtx(ctx, &info, query, macId, arch, versionCode)
		})

		if err != nil {
			return nil, err
		}
		return info, nil
	})

	if v != nil {
		info := v.(model.UpgradeMacVersion)
		return &info, err
	}

	return nil, err
}

// GetMacVersionInfoById
// 通过 mac version id 获取信息
func (c *Ctx) GetMacVersionInfoById(ctx context.Context,
	id int64) (*model.UpgradeMacVersion, error) {

	cacheKey := fmt.Sprintf(CacheKeyMacVersionInfoById, id)

	// 内存缓存
	v, err := c.localCache.Take(cacheKey, func() (interface{}, error) {
		// sql 缓存查询
		var info model.UpgradeMacVersion
		query := fmt.Sprintf("select * from upgrade_mac_version where `id` = ?  limit 1")
		err := c.mysqlConnCache.QueryRowCtx(ctx, &info, cacheKey, func(ctx context.Context, conn sqlx.SqlConn, v any) error {
			return c.mysqlConn.QueryRowCtx(ctx, v, query, id)
		})
		if err != nil {
			return nil, err
		}

		return info, nil
	})

	if v != nil {
		info := v.(model.UpgradeMacVersion)
		return &info, err
	}

	return nil, err
}
