FROM docker.zuoyetong.com.cn:8888/xucb/ubuntu.14.04-openresty
MAINTAINER "XuChongBo <xcbfreedom@gmail.com>"

ADD . /recognize_service/

WORKDIR /recognize_service/

CMD nginx -p . -c nginx.conf


