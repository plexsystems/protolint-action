FROM alpine:latest

LABEL version="0.1.0"
LABEL repository="https://github.com/plexsystems/protolint-action"
LABEL homepage="https://github.com/plexsystems/protolint-action"

COPY LICENSE README.md /

ARG PROTOLINT_VERSION=0.17.0
RUN wget https://github.com/yoheimuta/protolint/releases/download/v${PROTOLINT_VERSION}/protolint_${PROTOLINT_VERSION}_Linux_x86_64.tar.gz \
      && tar xf protolint_${PROTOLINT_VERSION}_Linux_x86_64.tar.gz \
      && mv protolint /usr/local/bin/protolint

ENTRYPOINT ["protolint"]
