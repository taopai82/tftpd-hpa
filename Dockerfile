FROM alpine

RUN apk add --update tftp-hpa
VOLUME /tftpboot
EXPOSE 69/udp

ENTRYPOINT ["in.tftpd"]
CMD ["--verbose", "--foreground", "--secure", "/tftpboot"]

