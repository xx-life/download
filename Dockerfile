FROM registry.cn-hangzhou.aliyuncs.com/xxzhang/tengine

ADD ./nginx/nginx.conf /etc/nginx/nginx.conf
ADD ./nginx/help.conf /etc/nginx/help.conf
ADD ./nginx/vhosts /etc/nginx/vhosts

VOLUME /home/files

USER root