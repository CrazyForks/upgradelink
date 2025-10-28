package resource

import (
	"context"
	"fmt"
	"time"

	"upgradelink-api/server/api/internal/resource/model"

	"github.com/zeromicro/go-zero/core/stores/sqlx"
)

const (
	CacheKeyMacStrategyInfoByDevTypeAllAndMacIdAndArchAndVersion = PREFIX + "MAC_STRATEGY_INFO:DEV_TYPE:ALL:MAC_ID:%v:ARCH:%v:CLIENT_VERSION_CODE:%v:"
	CacheKeyMacStrategyListByMacIdAndArchAndVersion              = PREFIX + "MAC_STRATEGY_LIST:MAC_ID:%v:ARCH:%v:CLIENT_VERSION_CODE:%v:"

	// CacheKeyMacStrategyLastInfoByMacId 最新版本信息
	CacheKeyMacStrategyLastInfoByMacId = PREFIX + "MAC_STRATEGY_LAST_INFO:MAC_ID:%v"
)

// GetMacStrategyInfoByMacIdAndVersionAndDevTypeAll
// 获取大于 客户端的 versionCode 的版本 获取开启了 全部设备的策略
func (c *Ctx) GetMacStrategyInfoByMacIdAndVersionAndDevTypeAll(ctx context.Context, macId int64, arch string, clientVersionCode int64) (*model.UpgradeMacUpgradeStrategy, error) {

	cacheKey := fmt.Sprintf(CacheKeyMacStrategyInfoByDevTypeAllAndMacIdAndArchAndVersion, macId, arch, clientVersionCode)

	now := time.Now()

	// 内存缓存
	v, err := c.localCache.Take(cacheKey, func() (interface{}, error) {
		// sql 缓存查询
		var macStrategyInfo model.UpgradeMacUpgradeStrategy
		query := fmt.Sprintf("select upgrade_mac_upgrade_strategy.* from upgrade_mac_upgrade_strategy " +
			"left join upgrade_mac_version on upgrade_mac_upgrade_strategy.mac_version_id = upgrade_mac_version.id " +
			"where upgrade_mac_upgrade_strategy.mac_id = ? " +
			"AND upgrade_mac_version.arch = ? " +
			"AND upgrade_mac_version.version_code > ? " +
			"AND ? > upgrade_mac_upgrade_strategy.begin_datetime " +
			"AND ? < upgrade_mac_upgrade_strategy.end_datetime " +
			"AND upgrade_mac_upgrade_strategy.upgrade_dev_type = 0 " +
			"AND upgrade_mac_upgrade_strategy.enable = 1 " +
			"AND upgrade_mac_upgrade_strategy.is_del = 0 " +
			"order by upgrade_mac_version.version_code desc limit 1")

		//fmt.Println("query: ", query)
		err := c.mysqlConnCache.QueryRowCtx(ctx, &macStrategyInfo, cacheKey, func(ctx context.Context, conn sqlx.SqlConn, v any) error {
			return c.mysqlConn.QueryRowCtx(ctx, v, query, macId, arch, clientVersionCode, now, now)
		})

		if err != nil {
			return nil, err
		}

		return macStrategyInfo, nil
	})

	if v != nil {
		macStrategyInfo := v.(model.UpgradeMacUpgradeStrategy)
		return &macStrategyInfo, err
	}
	return nil, err
}

// GetMacStrategyListByMacIdAndArchAndVersion
// 获取大于 客户端的 versionCode 的版本 的全部策略 list
func (c *Ctx) GetMacStrategyListByMacIdAndArchAndVersion(ctx context.Context, macId int64, arch string, clientVersionCode int64) ([]*model.UpgradeMacUpgradeStrategy, error) {

	cacheKey := fmt.Sprintf(CacheKeyMacStrategyListByMacIdAndArchAndVersion, macId, arch, clientVersionCode)

	now := time.Now()

	// 内存缓存
	v, err := c.localCache.Take(cacheKey, func() (interface{}, error) {
		// sql 缓存查询
		var macStrategyList []*model.UpgradeMacUpgradeStrategy
		query := fmt.Sprintf("select upgrade_mac_upgrade_strategy.* from upgrade_mac_upgrade_strategy " +
			"left join upgrade_mac_version on upgrade_mac_upgrade_strategy.mac_version_id = upgrade_mac_version.id " +
			"where upgrade_mac_upgrade_strategy.mac_id = ? " +
			"AND upgrade_mac_version.arch = ? " +
			"AND upgrade_mac_version.version_code > ? " +
			"AND ? > upgrade_mac_upgrade_strategy.begin_datetime " +
			"AND ? < upgrade_mac_upgrade_strategy.end_datetime " +
			"AND upgrade_mac_upgrade_strategy.enable = 1 " +
			"AND upgrade_mac_upgrade_strategy.is_del = 0 " +
			"order by upgrade_mac_version.version_code desc")
		fmt.Println("query: ", query)
		err := c.mysqlConn.QueryRowsCtx(context.Background(), &macStrategyList, query, macId, arch, clientVersionCode, now, now)
		if err != nil {
			return nil, err
		}

		fmt.Println("GetMacStrategyListByMacIdAndArchAndVersion macStrategyList: ", len(macStrategyList))
		return macStrategyList, nil
	})

	if v != nil {
		macStrategyList := v.([]*model.UpgradeMacUpgradeStrategy)
		return macStrategyList, err
	}

	return nil, err
}

// GetLastMacStrategyInfoByMacIdAndVersion
// 获取最新版本客户端的的版本
// 未使用
func (c *Ctx) GetLastMacStrategyInfoByMacIdAndVersion(ctx context.Context, macId int64) (*model.UpgradeMacUpgradeStrategy, error) {

	cacheKey := fmt.Sprintf(CacheKeyMacStrategyLastInfoByMacId, macId)

	now := time.Now()

	// 内存缓存
	v, err := c.localCache.Take(cacheKey, func() (interface{}, error) {
		// sql 缓存查询
		var macStrategyInfo model.UpgradeMacUpgradeStrategy
		query := fmt.Sprintf("select upgrade_mac_upgrade_strategy.* from upgrade_mac_upgrade_strategy " +
			"left join upgrade_mac_version on upgrade_mac_upgrade_strategy.mac_version_id = upgrade_mac_version.id " +
			"where upgrade_mac_upgrade_strategy.mac_id = ? " +
			"AND ? > upgrade_mac_upgrade_strategy.begin_datetime " +
			"AND ? < upgrade_mac_upgrade_strategy.end_datetime " +
			"AND upgrade_mac_upgrade_strategy.upgrade_dev_type = 0 " +
			"AND upgrade_mac_upgrade_strategy.enable = 1 " +
			"AND upgrade_mac_upgrade_strategy.is_del = 0 " +
			"order by upgrade_mac_version.version_code desc limit 1")

		//fmt.Println("query: ", query)
		err := c.mysqlConnCache.QueryRowCtx(ctx, &macStrategyInfo, cacheKey, func(ctx context.Context, conn sqlx.SqlConn, v any) error {
			return c.mysqlConn.QueryRowCtx(ctx, v, query, macId, now, now)
		})

		if err != nil {
			return nil, err
		}

		return macStrategyInfo, nil
	})

	if v != nil {
		macStrategyInfo := v.(model.UpgradeMacUpgradeStrategy)
		return &macStrategyInfo, err
	}
	return nil, err
}
