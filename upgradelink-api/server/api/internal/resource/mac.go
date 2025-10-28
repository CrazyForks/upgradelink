package resource

import (
	"context"
	"fmt"

	"upgradelink-api/server/api/internal/resource/model"

	"github.com/zeromicro/go-zero/core/stores/sqlx"
)

const (
	CacheKeyMacInfoByKey = PREFIX + "MAC_INFO:KEY:%v"
)

func (c *Ctx) GetMacInfoByKey(ctx context.Context,
	key string) (*model.UpgradeMac, error) {

	cacheKey := fmt.Sprintf(CacheKeyMacInfoByKey, key)

	// 内存缓存
	v, err := c.localCache.Take(cacheKey, func() (interface{}, error) {
		// sql 缓存查询
		var urlInfo model.UpgradeMac
		query := fmt.Sprintf("select * from upgrade_mac where `key` = ? and is_del = 0 limit 1")
		err := c.mysqlConnCache.QueryRowCtx(ctx, &urlInfo, cacheKey, func(ctx context.Context, conn sqlx.SqlConn, v any) error {
			return c.mysqlConn.QueryRowCtx(ctx, v, query, key)
		})

		if err != nil {
			return nil, err
		}

		return urlInfo, nil
	})

	if v != nil {
		macInfo := v.(model.UpgradeMac)
		return &macInfo, err
	}

	return nil, err
}
