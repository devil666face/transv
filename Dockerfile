FROM node:24-bookworm-slim

ARG YT_DLP_VERSION=2025.08.22

ENV DEBIAN_FRONTEND=noninteractive \
    LANG=en_US.UTF-8 \
    LANGUAGE=en_US:en \
    LC_ALL=en_US.UTF-8 \
    TZ=UTC

ENV RESOLUTION="720" \
    PROXY=""

RUN npm install -g vot-cli
RUN apt-get update --quiet --quiet && \
    apt-get install --quiet --quiet --yes \
    --no-install-recommends --no-install-suggests \
    ffmpeg \
    && apt-get --quiet --quiet clean \
    && rm --recursive --force /var/lib/apt/lists/* /tmp/* /var/tmp/*

ADD https://github.com/yt-dlp/yt-dlp/releases/download/${YT_DLP_VERSION}/yt-dlp_linux /usr/local/bin/yt-dlp

COPY _download /usr/local/bin/download

RUN chmod +x /usr/local/bin/download && \
    chmod +x /usr/local/bin/yt-dlp

WORKDIR /transv

ENTRYPOINT [ "download" ]
