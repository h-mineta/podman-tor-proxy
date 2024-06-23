FROM alpine:edge

RUN apk add --no-cache curl tor \
    && sed -E "1s/^/SocksPort 0\.0\.0\.0:9050\n/" /etc/tor/torrc.sample > /etc/tor/torrc

VOLUME ["/var/lib/tor"]
EXPOSE 9050
USER tor
CMD ["tor"]
