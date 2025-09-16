FROM alpine:3.22

# renovate: datasource=repology depName=alpine_3_22/wireguard-tools versioning=loose
ENV WIREGUARD_VERSION="1.0.20250521-r0"

# renovate: datasource=repology depName=alpine_3_22/iptables versioning=loose
ENV IPTABLES_VERSION="1.8.11-r1"

COPY --chmod=0755 ./entrypoint.sh /entrypoint.sh

RUN apk add --no-cache wireguard-tools="${WIREGUARD_VERSION}" iptables="${IPTABLES_VERSION}"

RUN mkdir -p /etc/wireguard/

CMD ["/entrypoint.sh"]
