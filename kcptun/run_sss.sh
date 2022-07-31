#!/bin/bash
CWD=$(dirname $0)
docker run --name ssserver-rust \
  --restart always \
  -p 12012:12012/tcp \
  -p 12012:12012/udp \
  -v /root/shell-scripts/kcptun/sss_config.json:/etc/shadowsocks-rust/config.json \
  -dit ghcr.io/shadowsocks/ssserver-rust:latest
