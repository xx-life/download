FROM registry.cn-hangzhou.aliyuncs.com/xxzhang/tengine

RUN apk add --no-cache --virtual .gettext git

ADD ./nginx/nginx.conf /etc/nginx/nginx.conf
ADD ./nginx/help.conf /etc/nginx/help.conf
ADD ./nginx/vhosts /etc/nginx/vhosts
RUN mkdir -p  /home/files

RUN cd /home/files && \
wget -c https://releases.hashicorp.com/vagrant/2.2.6/vagrant_2.2.6_x86_64.deb && \
wget -c https://releases.hashicorp.com/vagrant/2.2.6/vagrant_2.2.6_linux_amd64.zip && \
wget -c https://download.virtualbox.org/virtualbox/6.1.0/virtualbox-6.1_6.1.0-135406~Ubuntu~bionic_amd64.deb 


VOLUME /home/files

USER root
