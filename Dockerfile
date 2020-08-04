# FROM registry.cn-hangzhou.aliyuncs.com/xxzhang/tengine
FROM axizdkr/tengine
RUN apk add --no-cache --virtual .gettext git

ADD ./nginx/nginx.conf /etc/nginx/nginx.conf
ADD ./nginx/help.conf /etc/nginx/help.conf
ADD ./nginx/vhosts /etc/nginx/vhosts
RUN mkdir -p  /home/files

RUN cd /home/files && \
    wget -c https://sourceforge.mirrorservice.org/m/me/metasploitable/Metasploitable2/metasploitable-linux-2.0.0.zip
    
VOLUME /home/files

USER root


