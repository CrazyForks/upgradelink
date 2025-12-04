FROM toolsetlink/build-upgradelink:v2.0.1 AS builder

WORKDIR /go/src/upgradelink-admin-task/

COPY . .

# 定义构建参数（由 Buildx 自动注入，对应目标架构）
ARG TARGETOS
ARG TARGETARCH

RUN go mod tidy \
    && go mod download

RUN CGO_ENABLED=0 GOOS=$TARGETOS GOARCH=$TARGETARCH go build -ldflags="-s -w" -o /go/src/upgradelink-admin-task/server/task/task /go/src/upgradelink-admin-task/server/task/task.go

# 缩小包体积
RUN tar zcvf /go/src/upgradelink-admin-task/server/task.tar.gz -C /go/src/upgradelink-admin-task/server task/task task/etc

FROM toolsetlink/alpine-upgradelink:v2.0.0 AS prod

LABEL description="upgradelink-admin-task"

ARG ENV=prod

ENV RUN_MODE=$ENV APP_NAME="upgradelink-admin-task"

WORKDIR /link/upgradelink-admin-task

COPY --from=builder /go/src/upgradelink-admin-task/server/task.tar.gz  .

# 拷贝 HdiffPatch 文件
# 根据不同架构选择对应的 HDiffPatch 文件路径
ARG TARGETARCH
RUN --mount=type=bind,from=builder,source=/go/src/upgradelink-admin-task/build/HDiffPatch,target=/tmp/hdiffpatch \
    if [ "$TARGETARCH" = "arm64" ]; then \
        cp /tmp/hdiffpatch/linux_arm64/hdiffz /usr/local/bin/hdiffz; \
    else \
        cp /tmp/hdiffpatch/linux64/hdiffz /usr/local/bin/hdiffz; \
    fi && \
    chown root:root /usr/local/bin/hdiffz

# 拷贝 Nginx 配置文件和构建好的文件到 Nginx 的 html 目录
COPY --from=builder /go/src/upgradelink-admin-task/build/nginx.conf /etc/nginx/
COPY --from=builder /go/src/upgradelink-admin-task/build/logrotate-nginx /link/upgradelink-admin-task/build/logrotate-nginx
COPY --from=builder /go/src/upgradelink-admin-task/build/supervisord.conf /link/upgradelink-admin-task/build/supervisord.conf

RUN tar -zxvf task.tar.gz \
    && rm -f task.tar.gz \
    && sed -i '$a\0 0 * * * logrotate -f /link/upgradelink-admin-task/build/logrotate-nginx' /var/spool/cron/crontabs/root \
    && echo '''mkdir -p /link/logs/nginx && \
        mkdir -p /link/logs/supervisor && \
        supervisord -c /link/upgradelink-admin-task/build/supervisord.conf''' > start.sh \
    && chmod a+x start.sh

EXPOSE 80

CMD [ "/bin/bash", "start.sh" ]

# 在当面模块根目录下执行  /upgradelink/upgradelink-api

# amd架构
# docker buildx build --no-cache -t upgradelink-admin-task:2.3.1 --platform=linux/amd64 -f build/Dockerfile . --load
# arm架构
# docker buildx build --no-cache -t upgradelink-admin-task:2.3.1 --platform=linux/arm64 -f build/Dockerfile . --load


# 打包开源镜像
# docker buildx build -t toolsetlink/upgradelink-admin-task:2.3.1 --platform=linux/amd64,linux/arm64 -f build/Dockerfile . --push
