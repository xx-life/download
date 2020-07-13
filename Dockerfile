# FROM registry.cn-hangzhou.aliyuncs.com/xxzhang/tengine
FROM axizdkr/tengine
RUN apk add --no-cache --virtual .gettext git

ADD ./nginx/nginx.conf /etc/nginx/nginx.conf
ADD ./nginx/help.conf /etc/nginx/help.conf
ADD ./nginx/vhosts /etc/nginx/vhosts
RUN mkdir -p  /home/files

RUN cd /home/files && \
	git clone https://github.com/StrangerealIntel/CyberThreatIntel 

RUN cd /home/files && \
	git clone https://github.com/TheKingOfDuck/fuzzDicts
	
RUN cd /home/files && \
	git clone https://github.com/bloodzer0/ossa

RUN cd /home/files && \
	git clone https://github.com/Wh0ale/SRC-experience

VOLUME /home/files

USER root


