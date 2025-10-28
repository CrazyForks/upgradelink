package resource

import (
	"context"
	"fmt"
	"time"

	"upgradelink-api/server/api/internal/resource/model"

	"github.com/zeromicro/go-zero/core/stores/sqlx"
)

const (
	CacheKeyWinStrategyInfoByDevTypeAllAndWinIdAndArchAndVersion = PREFIX + "WIN_STRATEGY_INFO:DEV_TYPE:ALL:WIN_ID:%v:ARCH:%v:CLIENT_VERSION_CODE:%v:"
	CacheKeyWinStrategyListByWinIdAndArchAndVersion              = PREFIX + "WIN_STRATEGY_LIST:WIN_ID:%v:ARCH:%v:CLIENT_VERSION_CODE:%v:"

	// CacheKeyWinStrategyLastInfoByWinId 最新版本信息
	CacheKeyWinStrategyLastInfoByWinId = PREFIX + "WIN_STRATEGY_LAST_INFO:WIN_ID:%v"
)

// GetWinStrategyInfoByWinIdAndVersionAndDevTypeAll
// 获取大于 客户端的 versionCode 的版本 获取开启了 全部设备的策略
func (c *Ctx) GetWinStrategyInfoByWinIdAndVersionAndDevTypeAll(ctx context.Context, winId int64, arch string, clientVersionCode int64) (*model.UpgradeWinUpgradeStrategy, error) {

	cacheKey := fmt.Sprintf(CacheKeyWinStrategyInfoByDevTypeAllAndWinIdAndArchAndVersion, winId, arch, clientVersionCode)

	now := time.Now()

	// 内存缓存
	v, err := c.localCache.Take(cacheKey, func() (interface{}, error) {
		// sql 缓存查询
		var winStrategyInfo model.UpgradeWinUpgradeStrategy
		query := fmt.Sprintf("select upgrade_win_upgrade_strategy.* from upgrade_win_upgrade_strategy " +
			"left join upgrade_win_version on upgrade_win_upgrade_strategy.win_version_id = upgrade_win_version.id " +
			"where upgrade_win_upgrade_strategy.win_id = ? " +
			"AND upgrade_win_version.arch = ? " +
			"AND upgrade_win_version.version_code > ? " +
			"AND ? > upgrade_win_upgrade_strategy.begin_datetime " +
			"AND ? < upgrade_win_upgrade_strategy.end_datetime " +
			"AND upgrade_win_upgrade_strategy.upgrade_dev_type = 0 " +
			"AND upgrade_win_upgrade_strategy.enable = 1 " +
			"AND upgrade_win_upgrade_strategy.is_del = 0 " +
			"order by upgrade_win_version.version_code desc limit 1")

		//fmt.Println("query: ", query)
		err := c.mysqlConnCache.QueryRowCtx(ctx, &winStrategyInfo, cacheKey, func(ctx context.Context, conn sqlx.SqlConn, v any) error {
			return c.mysqlConn.QueryRowCtx(ctx, v, query, winId, arch, clientVersionCode, now, now)
		})

		if err != nil {
			return nil, err
		}

		return winStrategyInfo, nil
	})

	if v != nil {
		winStrategyInfo := v.(model.UpgradeWinUpgradeStrategy)
		return &winStrategyInfo, err
	}
	return nil, err
}

// GetWinStrategyListByWinIdAndArchAndVersion
// 获取大于 客户端的 versionCode 的版本 的全部策略 list
func (c *Ctx) GetWinStrategyListByWinIdAndArchAndVersion(ctx context.Context, winId int64, arch string, clientVersionCode int64) ([]*model.UpgradeWinUpgradeStrategy, error) {

	cacheKey := fmt.Sprintf(CacheKeyWinStrategyListByWinIdAndArchAndVersion, winId, arch, clientVersionCode)

	now := time.Now()

	// 内存缓存
	v, err := c.localCache.Take(cacheKey, func() (interface{}, error) {
		// sql 缓存查询
		var winStrategyList []*model.UpgradeWinUpgradeStrategy
		query := fmt.Sprintf("select upgrade_win_upgrade_strategy.* from upgrade_win_upgrade_strategy " +
			"left join upgrade_win_version on upgrade_win_upgrade_strategy.win_version_id = upgrade_win_version.id " +
			"where upgrade_win_upgrade_strategy.win_id = ? " +
			"AND upgrade_win_version.arch = ? " +
			"AND upgrade_win_version.version_code > ? " +
			"AND ? > upgrade_win_upgrade_strategy.begin_datetime " +
			"AND ? < upgrade_win_upgrade_strategy.end_datetime " +
			"AND upgrade_win_upgrade_strategy.enable = 1 " +
			"AND upgrade_win_upgrade_strategy.is_del = 0 " +
			"order by upgrade_win_version.version_code desc")
		fmt.Println("query: ", query)
		err := c.mysqlConn.QueryRowsCtx(context.Background(), &winStrategyList, query, winId, arch, clientVersionCode, now, now)
		if err != nil {
			return nil, err
		}

		fmt.Println("GetWinStrategyListByWinIdAndArchAndVersion winStrategyList: ", len(winStrategyList))
		return winStrategyList, nil
	})

	if v != nil {
		winStrategyList := v.([]*model.UpgradeWinUpgradeStrategy)
		return winStrategyList, err
	}

	return nil, err
}

// GetLastWinStrategyInfoByWinIdAndVersion
// 获取最新版本客户端的的版本
// 未使用
func (c *Ctx) GetLastWinStrategyInfoByWinIdAndVersion(ctx context.Context, winId int64) (*model.UpgradeWinUpgradeStrategy, error) {

	cacheKey := fmt.Sprintf(CacheKeyWinStrategyLastInfoByWinId, winId)

	now := time.Now()

	// 内存缓存
	v, err := c.localCache.Take(cacheKey, func() (interface{}, error) {
		// sql 缓存查询
		var winStrategyInfo model.UpgradeWinUpgradeStrategy
		query := fmt.Sprintf("select upgrade_win_upgrade_strategy.* from upgrade_win_upgrade_strategy " +
			"left join upgrade_win_version on upgrade_win_upgrade_strategy.win_version_id = upgrade_win_version.id " +
			"where upgrade_win_upgrade_strategy.win_id = ? " +
			"AND ? > upgrade_win_upgrade_strategy.begin_datetime " +
			"AND ? < upgrade_win_upgrade_strategy.end_datetime " +
			"AND upgrade_win_upgrade_strategy.upgrade_dev_type = 0 " +
			"AND upgrade_win_upgrade_strategy.enable = 1 " +
			"AND upgrade_win_upgrade_strategy.is_del = 0 " +
			"order by upgrade_win_version.version_code desc limit 1")

		//fmt.Println("query: ", query)
		err := c.mysqlConnCache.QueryRowCtx(ctx, &winStrategyInfo, cacheKey, func(ctx context.Context, conn sqlx.SqlConn, v any) error {
			return c.mysqlConn.QueryRowCtx(ctx, v, query, winId, now, now)
		})

		if err != nil {
			return nil, err
		}

		return winStrategyInfo, nil
	})

	if v != nil {
		winStrategyInfo := v.(model.UpgradeWinUpgradeStrategy)
		return &winStrategyInfo, err
	}
	return nil, err
}
