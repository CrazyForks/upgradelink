package resource

import (
	"context"
	"fmt"

	"upgradelink-api/server/api/internal/resource/model"

	"github.com/zeromicro/go-zero/core/stores/sqlx"
)

const (
	CacheKeyWinInfoByKey = PREFIX + "WIN_INFO:KEY:%v"
)

func (c *Ctx) GetWinInfoByKey(ctx context.Context,
	key string) (*model.UpgradeWin, error) {

	cacheKey := fmt.Sprintf(CacheKeyWinInfoByKey, key)

	// 内存缓存
	v, err := c.localCache.Take(cacheKey, func() (interface{}, error) {
		// sql 缓存查询
		var urlInfo model.UpgradeWin
		query := fmt.Sprintf("select * from upgrade_win where `key` = ? and is_del = 0 limit 1")
		err := c.mysqlConnCache.QueryRowCtx(ctx, &urlInfo, cacheKey, func(ctx context.Context, conn sqlx.SqlConn, v any) error {
			return c.mysqlConn.QueryRowCtx(ctx, v, query, key)
		})

		if err != nil {
			return nil, err
		}

		return urlInfo, nil
	})

	if v != nil {
		winInfo := v.(model.UpgradeWin)
		return &winInfo, err
	}

	return nil, err
}
