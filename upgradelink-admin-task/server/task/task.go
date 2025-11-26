package main

import (
	"flag"
	"fmt"
	"upgradelink-admin-task/server/task/internal/crontab"

	"upgradelink-admin-task/server/task/internal/common/osx"
	"upgradelink-admin-task/server/task/internal/config"
	"upgradelink-admin-task/server/task/internal/handler"
	"upgradelink-admin-task/server/task/internal/svc"

	"github.com/zeromicro/go-zero/core/conf"
	"github.com/zeromicro/go-zero/rest"
)

var configFile = flag.String("f", "./etc/dev.yaml", "the config file")

func main() {
	flag.Parse()

	fmt.Println("osx.Env(): ", osx.Env())

	var c config.Config
	conf.MustLoad(*configFile, &c)

	server := rest.MustNewServer(c.RestConf)
	defer server.Stop()

	ctx := svc.NewServiceContext(c)
	handler.RegisterHandlers(server, ctx)

	// 定时任务调度
	scheduler, err := crontab.InitScheduler(ctx)
	if err != nil {
		fmt.Printf("Failed to initialize scheduler: %v", err)
	}
	scheduler.Start()

	fmt.Printf("Starting server at %s:%d...\n", c.Host, c.Port)
	server.Start()
}
