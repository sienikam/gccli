FROM alpine:latest
RUN apk add --no-cache gcompat curl jq
RUN curl -s https://sdk-cdn.mypurecloud.com/external/go-cli/linux/dl/install.sh | bash
CMD ["/usr/local/bin/gc"]
