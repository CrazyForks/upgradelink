package hello

import (
	"context"
	"fmt"
	"time"
	"upgradelink-admin-task/server/task/internal/svc"
)

func SayHello(ctx context.Context, svcCtx *svc.ServiceContext) {
	fmt.Println("SayHello running at:", time.Now())
	return
}
