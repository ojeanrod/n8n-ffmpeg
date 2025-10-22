FROM n8nio/n8n:latest

USER root

# Instalar FFmpeg e dependências
RUN apt-get update && \
    apt-get install -y \
        ffmpeg \
        libavcodec-extra \
        libavformat58 \
        libavutil56 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

USER node

EXPOSE 5678
