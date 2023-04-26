ARG CONTAINER=ghcr.io/openwrt/sdk
ARG ARCH=mips_24kc
FROM $CONTAINER:$ARCH

LABEL "com.github.actions.name"="OpenWrt SDK"

ADD fuse /usr/include/

ADD entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]
