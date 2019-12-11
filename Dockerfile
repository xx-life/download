FROM registry.cn-hangzhou.aliyuncs.com/xxzhang/tengine

RUN apk add --no-cache --virtual .gettext git

ADD ./nginx/nginx.conf /etc/nginx/nginx.conf
ADD ./nginx/help.conf /etc/nginx/help.conf
ADD ./nginx/vhosts /etc/nginx/vhosts
RUN mkdir -p  /home/files

RUN cd /home/files && \
git clone https://github.com/tatsui-geek/malware-traffic-analysis.net && \
git clone https://github.com/neu5ron/malware-traffic-analysis-pcaps 


VOLUME /home/files

USER root
