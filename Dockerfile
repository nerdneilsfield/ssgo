FROM alpine
MAINTAINER dengqi
ADD ./conf.json /etc/conf.json
ADD ./shadowsocks-server-linux64-1.1.5 /usr/bin/ss-server
EXPOSE 443
CMD ["/usr/bin/ss-server","-c","/etc/conf.json"]
