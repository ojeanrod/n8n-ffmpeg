FROM n8nio/n8n:latest

USER root

# Instalar FFmpeg no Alpine Linux
RUN apk update && \
    apk add --no-cache ffmpeg && \
    rm -rf /var/cache/apk/*

USER node

EXPOSE 5678
