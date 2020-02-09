FROM alpine

RUN apk add tftp-hpa
VOLUME /tftpboot
EXPOSE 69/udp

ENTRYPOINT ["in.tftpd"]
CMD ["--verbosity=4", "--foreground", "--secure", "/tftpboot"]

