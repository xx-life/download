# FROM registry.cn-hangzhou.aliyuncs.com/xxzhang/tengine
FROM axizdkr/tengine
RUN apk add --no-cache --virtual .gettext git

ADD ./nginx/nginx.conf /etc/nginx/nginx.conf
ADD ./nginx/help.conf /etc/nginx/help.conf
ADD ./nginx/vhosts /etc/nginx/vhosts
RUN mkdir -p  /home/files

RUN cd /home/files && \
    wget -c https://kumisystems.dl.sourceforge.net/project/hackxor/hackxor12.7z && \
    wget -c http://files.nyi.pfsense.org/mirror/downloads/pfSense-CE-2.4.5-RELEASE-amd64.iso.gz

VOLUME /home/files

USER root


