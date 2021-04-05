FROM alpine:3.11.2

RUN apk add curl

ARG PROTOLINT_VERSION=0.31.0
RUN curl -LO https://github.com/yoheimuta/protolint/releases/download/v${PROTOLINT_VERSION}/protolint_${PROTOLINT_VERSION}_Linux_x86_64.tar.gz \
    && tar xf protolint_${PROTOLINT_VERSION}_Linux_x86_64.tar.gz \
    && chmod +x protolint \
    && mv protolint /usr/local/bin/protolint
