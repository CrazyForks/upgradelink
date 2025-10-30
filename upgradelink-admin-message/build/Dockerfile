FROM toolsetlink/build-upgradelink:v2.0.1 AS builder

WORKDIR /go/src/upgradelink-admin-message/

COPY . .

# 定义构建参数（由 Buildx 自动注入，对应目标架构）
ARG TARGETOS
ARG TARGETARCH

RUN go mod tidy \
    && go mod download

RUN CGO_ENABLED=0 GOOS=$TARGETOS GOARCH=$TARGETARCH go build -ldflags="-s -w" -o /go/src/upgradelink-admin-message/server/mcms /go/src/upgradelink-admin-message/server/mcms.go

# 缩小包体积
RUN tar zcvf /go/src/upgradelink-admin-message/server/mcms.tar.gz -C /go/src/upgradelink-admin-message/server mcms etc


FROM toolsetlink/alpine-upgradelink:v2.0.0 AS prod

LABEL description="upgradelink-admin-message"

ARG ENV=prod

ENV RUN_MODE=$ENV APP_NAME="upgradelink-admin-message"

WORKDIR /link/upgradelink-admin-message

COPY --from=builder /go/src/upgradelink-admin-message/server/mcms.tar.gz  .

COPY --from=builder /go/src/upgradelink-admin-message/build/supervisord.conf /link/upgradelink-admin-message/build/supervisord.conf

RUN tar -zxvf mcms.tar.gz \
    && rm -f mcms.tar.gz \
    && echo '''mkdir -p /link/logs/supervisor && \
        supervisord -c /link/upgradelink-admin-message/build/supervisord.conf''' > start.sh \
    && chmod a+x start.sh

EXPOSE 9106

CMD [ "/bin/bash", "start.sh" ]

# 在当面模块根目录下执行  /upgradelink/upgradelink-admin-message

# amd架构
# docker buildx build --no-cache -t upgradelink-admin-message:2.0.0 --platform=linux/amd64 -f build/Dockerfile . --load
# arm架构
# docker buildx build --no-cache -t upgradelink-admin-message:2.0.0 --platform=linux/arm64 -f build/Dockerfile . --load


# 打包开源镜像
# docker buildx build -t toolsetlink/upgradelink-admin-message:2.1.0 --platform=linux/amd64,linux/arm64 -f build/Dockerfile . --push

