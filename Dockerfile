FROM alpine:latest
RUN apk add --no-cache gcompat bash curl jq
RUN curl -sL https://github.com/Clever/csvlint/releases/download/v0.3.0/csvlint-v0.3.0-linux-amd64.tar.gz | tar --strip-components=0 -xz -O csvlint-v0.3.0-linux-amd64/csvlint | tee /usr/local/bin/csvlint >/dev/null && chmod +x /usr/local/bin/csvlint
RUN curl -s https://sdk-cdn.mypurecloud.com/external/go-cli/linux/dl/install.sh | bash
CMD ["/usr/local/bin/gc"]