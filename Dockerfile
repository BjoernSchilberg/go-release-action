
FROM debian:stretch-slim

RUN DEBIAN_FRONTEND=noninteractive apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y \
  curl \
  wget \
  git \
  zip \
  build-essential \
  jq


COPY *.sh /
ENTRYPOINT ["/entrypoint.sh"]

LABEL maintainer="Bjoern Schilberg <bjoern.schilberg@intevation.de>"
