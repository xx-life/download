FROM registry.cn-hangzhou.aliyuncs.com/xxzhang/tengine

ADD ./nginx/nginx.conf /etc/nginx/nginx.conf
ADD ./nginx/help.conf /etc/nginx/help.conf
ADD ./nginx/vhosts /etc/nginx/vhosts
RUN mkdir -p  /home/files
RUN cd /home/files && \
    wget https://vagrantcloud.com/hfm4/boxes/centos5/versions/1.1.0/providers/virtualbox.box ;
VOLUME /home/files

USER root