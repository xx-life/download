FROM registry.cn-hangzhou.aliyuncs.com/xxzhang/tengine

RUN apk add --no-cache --virtual .gettext git

ADD ./nginx/nginx.conf /etc/nginx/nginx.conf
ADD ./nginx/help.conf /etc/nginx/help.conf
ADD ./nginx/vhosts /etc/nginx/vhosts
RUN mkdir -p  /home/files

RUN cd /home/files && \
wget https://static.rust-lang.org/dist/2019-11-07/rust-std-1.39.0-x86_64-unknown-linux-gnu.tar.gz && \
git clone https://github.com/ntop/PF_RING

VOLUME /home/files

USER root


