package resource

import (
	"context"
	"fmt"

	"upgradelink-api/server/api/internal/resource/model"

	"github.com/zeromicro/go-zero/core/stores/sqlx"
)

const (
	CacheKeyWinVersionListByWinIdAndArchAndVersionCode = PREFIX + "WIN_VERSION_LIST:WIN_ID:%v:ARCH:%v:VERSION_CODE:%v"
	CacheKeyWinVersionInfoById                         = PREFIX + "WIN_VERSION_INFO:ID:%v"
	CacheKeyWinVersionLastInfoByWinId                  = PREFIX + "WIN_VERSION_LAST_INFO:WIN_ID:%v"
	CacheKeyWinVersionInfoByWinIdAndArchAndVersionCode = PREFIX + "WIN_VERSION_INFO:WIN_ID:%v:ARCH:%v:VERSION_CODE:%v"
)

// GetWinVersionListByWinIdAndArchAndVersionCode
// 获取大于 versionCode 的版本列表
func (c *Ctx) GetWinVersionListByWinIdAndArchAndVersionCode(ctx context.Context, winId int64, arch string, versionCode int64) ([]*model.UpgradeWinVersion, error) {

	cacheKey := fmt.Sprintf(CacheKeyWinVersionListByWinIdAndArchAndVersionCode, winId, arch, versionCode)

	// 内存缓存
	v, err := c.localCache.Take(cacheKey, func() (interface{}, error) {
		// sql 缓存查询
		var WinVersionList []*model.UpgradeWinVersion
		query := fmt.Sprintf("select * from upgrade_win_version where `win_id` = ? and `arch` = ?  and is_del = 0 and `version_code` > ? order by version_code desc ")
		err := c.mysqlConnCache.QueryRowCtx(ctx, &WinVersionList, cacheKey, func(ctx context.Context, conn sqlx.SqlConn, v any) error {
			return c.mysqlConn.QueryRowsCtx(ctx, &WinVersionList, query, winId, arch, versionCode)
		})

		if err != nil {
			return nil, err
		}
		return WinVersionList, nil
	})

	if v != nil {
		list := v.([]*model.UpgradeWinVersion)
		return list, err
	}

	return nil, err
}

// GetWinVersionLastInfoByWinId
// 获取最新版本的信息
func (c *Ctx) GetWinVersionLastInfoByWinId(ctx context.Context, winId int64) (*model.UpgradeWinVersion, error) {

	cacheKey := fmt.Sprintf(CacheKeyWinVersionLastInfoByWinId, winId)

	// 内存缓存
	v, err := c.localCache.Take(cacheKey, func() (interface{}, error) {
		// sql 缓存查询
		var info model.UpgradeWinVersion
		query := fmt.Sprintf("select * from upgrade_win_version where `win_id` = ? and is_del = 0 order by version_code desc limit 1")
		err := c.mysqlConnCache.QueryRowCtx(ctx, &info, cacheKey, func(ctx context.Context, conn sqlx.SqlConn, v any) error {
			return c.mysqlConn.QueryRowCtx(ctx, &info, query, winId)
		})

		if err != nil {
			return nil, err
		}
		return info, nil
	})

	if v != nil {
		info := v.(model.UpgradeWinVersion)
		return &info, err
	}

	return nil, err
}

// 获取固定版本的信息
func (c *Ctx) GetWinVersionInfoByWinIdAndArchAndVersionCode(ctx context.Context, winId int64, arch string, versionCode int64) (*model.UpgradeWinVersion, error) {

	cacheKey := fmt.Sprintf(CacheKeyWinVersionInfoByWinIdAndArchAndVersionCode, winId, arch, versionCode)

	// 内存缓存
	v, err := c.localCache.Take(cacheKey, func() (interface{}, error) {
		// sql 缓存查询
		var info model.UpgradeWinVersion
		query := fmt.Sprintf("select * from upgrade_win_version where `win_id` = ? and `arch` = ? and is_del = 0 and `version_code` = ? LIMIT 1")
		err := c.mysqlConnCache.QueryRowCtx(ctx, &info, cacheKey, func(ctx context.Context, conn sqlx.SqlConn, v any) error {
			return c.mysqlConn.QueryRowCtx(ctx, &info, query, winId, arch, versionCode)
		})

		if err != nil {
			return nil, err
		}
		return info, nil
	})

	if v != nil {
		info := v.(model.UpgradeWinVersion)
		return &info, err
	}

	return nil, err
}

// GetWinVersionInfoById
// 通过 win version id 获取信息
func (c *Ctx) GetWinVersionInfoById(ctx context.Context,
	id int64) (*model.UpgradeWinVersion, error) {

	cacheKey := fmt.Sprintf(CacheKeyWinVersionInfoById, id)

	// 内存缓存
	v, err := c.localCache.Take(cacheKey, func() (interface{}, error) {
		// sql 缓存查询
		var info model.UpgradeWinVersion
		query := fmt.Sprintf("select * from upgrade_win_version where `id` = ?  limit 1")
		err := c.mysqlConnCache.QueryRowCtx(ctx, &info, cacheKey, func(ctx context.Context, conn sqlx.SqlConn, v any) error {
			return c.mysqlConn.QueryRowCtx(ctx, v, query, id)
		})
		if err != nil {
			return nil, err
		}

		return info, nil
	})

	if v != nil {
		info := v.(model.UpgradeWinVersion)
		return &info, err
	}

	return nil, err
}
