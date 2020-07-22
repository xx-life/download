# FROM registry.cn-hangzhou.aliyuncs.com/xxzhang/tengine
FROM axizdkr/tengine
RUN apk add --no-cache --virtual .gettext git

ADD ./nginx/nginx.conf /etc/nginx/nginx.conf
ADD ./nginx/help.conf /etc/nginx/help.conf
ADD ./nginx/vhosts /etc/nginx/vhosts
RUN mkdir -p  /home/files

RUN cd /home/files && \
    wget -c https://archive.cloudera.com/cm5/cm/5/cloudera-manager-centos7-cm5.14.1_x86_64.tar.gz


VOLUME /home/files

USER root


