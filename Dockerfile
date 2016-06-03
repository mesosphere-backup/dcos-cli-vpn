FROM alpine:3.2

RUN echo "http://dl-4.alpinelinux.org/alpine/edge/community/" >> /etc/apk/repositories && \
    echo "http://dl-4.alpinelinux.org/alpine/edge/testing/" >> /etc/apk/repositories && \
    apk add --update openvpn iptables bash easy-rsa && \
    ln -s /usr/share/easy-rsa/easyrsa /usr/local/bin && \
    rm -rf /tmp/* /var/tmp/* /var/cache/apk/*

### YOU MUST SET:
# OPENVPN_ROUTES - Syntax is "ip_1,ip_2,...,ip_n"

ENV OPENVPN_DIR /etc/openvpn

COPY start-openvpn /start-openvpn

CMD ["/start-openvpn"]
