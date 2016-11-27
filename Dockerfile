FROM privateport/alpine-rpi:3.3
MAINTAINER Sean Johnson <sean.johnson@maio.me>

RUN apk add --update tftp-hpa

VOLUME /tftpboot

EXPOSE 69/udp
CMD ["/usr/sbin/in.tftpd","--foreground","--listen","--address","[::]:69","--secure","/tftproot"]
