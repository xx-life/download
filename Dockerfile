FROM registry.cn-hangzhou.aliyuncs.com/xxzhang/tengine

RUN apk add --no-cache --virtual .gettext git

ADD ./nginx/nginx.conf /etc/nginx/nginx.conf
ADD ./nginx/help.conf /etc/nginx/help.conf
ADD ./nginx/vhosts /etc/nginx/vhosts
RUN mkdir -p  /home/files

RUN cd /home/files && \
git clone https://github.com/cisco-system-traffic-generator/trex-core && \
git clone https://github.com/cisco-system-traffic-generator/trex-java-sdk && \
git clone https://github.com/cisco-system-traffic-generator/trex-stateless-gui && \
git clone https://github.com/cisco-system-traffic-generator/trex-packet-editor && \
git clone https://github.com/cisco-system-traffic-generator/trex-web-playground && \
git clone https://github.com/cisco-system-traffic-generator/trex-profiles  && \
git clone https://github.com/cisco-system-traffic-generator/trex-doc && \
git clone https://github.com/cisco-system-traffic-generator/trex-qt-gui


VOLUME /home/files

USER root


