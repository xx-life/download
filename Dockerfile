FROM registry.cn-hangzhou.aliyuncs.com/xxzhang/tengine

RUN apk add --no-cache --virtual .gettext git

ADD ./nginx/nginx.conf /etc/nginx/nginx.conf
ADD ./nginx/help.conf /etc/nginx/help.conf
ADD ./nginx/vhosts /etc/nginx/vhosts
RUN mkdir -p  /home/files

RUN cd /home/files && \
git clone https://github.com/shadowsocks/shadowsocks-libev && \
git clone https://github.com/shadowsocks/openwrt-shadowsocks && \
git clone https://github.com/openwrt/luci && \
git clone https://github.com/softwaredownload/openwrt-fanqiang && \
git clone https://github.com/miao1007/Openwrt-NetKeeper && \
git clone https://github.com/shadowsocksr-backup/shadowsocks-rss

VOLUME /home/files

USER root


