# ShadowsocksR for Docker

ShadowsocksR Server 的 Dockerfile

感谢 Shadowsocks 原作者 @clowwindy 

感谢 ShadowsocksR 原作者 @breakwa11 

##使用方法
自己构建 Docker 镜像或者拉取 Docker Hub 上的:

    docker pull smounives/shadowsocksr-docker

修改各个环境变量的值:

    SSR_SERVER_ADDR: 服务器IP
    SSR_SERVER_PORT: 服务器端口
    SSR_PASSWORD: 密码
    SSR_METHOD: 加密方式
    SSR_PROTOCOL: 混淆协议
    SSR_TIMEOUT: 超时时间
    SSR_OBFS: 混淆模式

已测试的可以直接部署在国内灵雀云(alauda.cn)

部署方法:

选择第三方镜像 index.alauda.cn/handsonic/shadowsocksr

修改 tcp 端口

添加环境变量的值，其中 SSR_SERVER_PORT 要和之前修改的端口保持一致
