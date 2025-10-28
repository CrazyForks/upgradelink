package resource

import (
	"context"
	"fmt"
	"time"

	"upgradelink-api/server/api/internal/resource/model"

	"github.com/zeromicro/go-zero/core/stores/sqlx"
)

const (
	CacheKeyLnxStrategyInfoByDevTypeAllAndLnxIdAndArchAndVersion = PREFIX + "LNX_STRATEGY_INFO:DEV_TYPE:ALL:LNX_ID:%v:ARCH:%v:CLIENT_VERSION_CODE:%v:"
	CacheKeyLnxStrategyListByLnxIdAndArchAndVersion              = PREFIX + "LNX_STRATEGY_LIST:LNX_ID:%v:ARCH:%v:CLIENT_VERSION_CODE:%v:"

	// CacheKeyLnxStrategyLastInfoByLnxId 最新版本信息
	CacheKeyLnxStrategyLastInfoByLnxId = PREFIX + "LNX_STRATEGY_LAST_INFO:LNX_ID:%v"
)

// GetLnxStrategyInfoByLnxIdAndVersionAndDevTypeAll
// 获取大于 客户端的 versionCode 的版本 获取开启了 全部设备的策略
func (c *Ctx) GetLnxStrategyInfoByLnxIdAndVersionAndDevTypeAll(ctx context.Context, lnxId int64, arch string, clientVersionCode int64) (*model.UpgradeLnxUpgradeStrategy, error) {

	cacheKey := fmt.Sprintf(CacheKeyLnxStrategyInfoByDevTypeAllAndLnxIdAndArchAndVersion, lnxId, arch, clientVersionCode)

	now := time.Now()

	// 内存缓存
	v, err := c.localCache.Take(cacheKey, func() (interface{}, error) {
		// sql 缓存查询
		var lnxStrategyInfo model.UpgradeLnxUpgradeStrategy
		query := fmt.Sprintf("select upgrade_lnx_upgrade_strategy.* from upgrade_lnx_upgrade_strategy " +
			"left join upgrade_lnx_version on upgrade_lnx_upgrade_strategy.lnx_version_id = upgrade_lnx_version.id " +
			"where upgrade_lnx_upgrade_strategy.lnx_id = ? " +
			"AND upgrade_lnx_version.arch = ? " +
			"AND upgrade_lnx_version.version_code > ? " +
			"AND ? > upgrade_lnx_upgrade_strategy.begin_datetime " +
			"AND ? < upgrade_lnx_upgrade_strategy.end_datetime " +
			"AND upgrade_lnx_upgrade_strategy.upgrade_dev_type = 0 " +
			"AND upgrade_lnx_upgrade_strategy.enable = 1 " +
			"AND upgrade_lnx_upgrade_strategy.is_del = 0 " +
			"order by upgrade_lnx_version.version_code desc limit 1")

		//fmt.Println("query: ", query)
		err := c.mysqlConnCache.QueryRowCtx(ctx, &lnxStrategyInfo, cacheKey, func(ctx context.Context, conn sqlx.SqlConn, v any) error {
			return c.mysqlConn.QueryRowCtx(ctx, v, query, lnxId, arch, clientVersionCode, now, now)
		})

		if err != nil {
			return nil, err
		}

		return lnxStrategyInfo, nil
	})

	if v != nil {
		lnxStrategyInfo := v.(model.UpgradeLnxUpgradeStrategy)
		return &lnxStrategyInfo, err
	}
	return nil, err
}

// GetLnxStrategyListByLnxIdAndArchAndVersion
// 获取大于 客户端的 versionCode 的版本 的全部策略 list
func (c *Ctx) GetLnxStrategyListByLnxIdAndArchAndVersion(ctx context.Context, lnxId int64, arch string, clientVersionCode int64) ([]*model.UpgradeLnxUpgradeStrategy, error) {

	cacheKey := fmt.Sprintf(CacheKeyLnxStrategyListByLnxIdAndArchAndVersion, lnxId, arch, clientVersionCode)

	now := time.Now()

	// 内存缓存
	v, err := c.localCache.Take(cacheKey, func() (interface{}, error) {
		// sql 缓存查询
		var lnxStrategyList []*model.UpgradeLnxUpgradeStrategy
		query := fmt.Sprintf("select upgrade_lnx_upgrade_strategy.* from upgrade_lnx_upgrade_strategy " +
			"left join upgrade_lnx_version on upgrade_lnx_upgrade_strategy.lnx_version_id = upgrade_lnx_version.id " +
			"where upgrade_lnx_upgrade_strategy.lnx_id = ? " +
			"AND upgrade_lnx_version.arch = ? " +
			"AND upgrade_lnx_version.version_code > ? " +
			"AND ? > upgrade_lnx_upgrade_strategy.begin_datetime " +
			"AND ? < upgrade_lnx_upgrade_strategy.end_datetime " +
			"AND upgrade_lnx_upgrade_strategy.enable = 1 " +
			"AND upgrade_lnx_upgrade_strategy.is_del = 0 " +
			"order by upgrade_lnx_version.version_code desc")
		fmt.Println("query: ", query)
		err := c.mysqlConn.QueryRowsCtx(context.Background(), &lnxStrategyList, query, lnxId, arch, clientVersionCode, now, now)
		if err != nil {
			return nil, err
		}

		fmt.Println("GetLnxStrategyListByLnxIdAndArchAndVersion lnxStrategyList: ", len(lnxStrategyList))
		return lnxStrategyList, nil
	})

	if v != nil {
		lnxStrategyList := v.([]*model.UpgradeLnxUpgradeStrategy)
		return lnxStrategyList, err
	}

	return nil, err
}

// GetLastLnxStrategyInfoByLnxIdAndVersion
// 获取最新版本客户端的的版本
// 未使用
func (c *Ctx) GetLastLnxStrategyInfoByLnxIdAndVersion(ctx context.Context, lnxId int64) (*model.UpgradeLnxUpgradeStrategy, error) {

	cacheKey := fmt.Sprintf(CacheKeyLnxStrategyLastInfoByLnxId, lnxId)

	now := time.Now()

	// 内存缓存
	v, err := c.localCache.Take(cacheKey, func() (interface{}, error) {
		// sql 缓存查询
		var lnxStrategyInfo model.UpgradeLnxUpgradeStrategy
		query := fmt.Sprintf("select upgrade_lnx_upgrade_strategy.* from upgrade_lnx_upgrade_strategy " +
			"left join upgrade_lnx_version on upgrade_lnx_upgrade_strategy.lnx_version_id = upgrade_lnx_version.id " +
			"where upgrade_lnx_upgrade_strategy.lnx_id = ? " +
			"AND ? > upgrade_lnx_upgrade_strategy.begin_datetime " +
			"AND ? < upgrade_lnx_upgrade_strategy.end_datetime " +
			"AND upgrade_lnx_upgrade_strategy.upgrade_dev_type = 0 " +
			"AND upgrade_lnx_upgrade_strategy.enable = 1 " +
			"AND upgrade_lnx_upgrade_strategy.is_del = 0 " +
			"order by upgrade_lnx_version.version_code desc limit 1")

		//fmt.Println("query: ", query)
		err := c.mysqlConnCache.QueryRowCtx(ctx, &lnxStrategyInfo, cacheKey, func(ctx context.Context, conn sqlx.SqlConn, v any) error {
			return c.mysqlConn.QueryRowCtx(ctx, v, query, lnxId, now, now)
		})

		if err != nil {
			return nil, err
		}

		return lnxStrategyInfo, nil
	})

	if v != nil {
		lnxStrategyInfo := v.(model.UpgradeLnxUpgradeStrategy)
		return &lnxStrategyInfo, err
	}
	return nil, err
}
