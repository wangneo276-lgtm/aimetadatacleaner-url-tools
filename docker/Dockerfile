FROM busybox:1.36.1
LABEL org.opencontainers.image.title="aimetadatacleaner-url-tools" \
      org.opencontainers.image.description="Offline URL builder for AI Metadata Cleaner image, video, and PDF metadata pages. Not an official SDK." \
      org.opencontainers.image.url="https://aimetadatacleaner.pro/" \
      org.opencontainers.image.source="https://github.com/wangneo276-lgtm/aimetadatacleaner-url-tools" \
      org.opencontainers.image.version="0.1.0" \
      org.opencontainers.image.licenses="MIT"
COPY docker/cli.sh /usr/local/bin/aimetadatacleaner-url-tools
RUN chmod +x /usr/local/bin/aimetadatacleaner-url-tools
ENTRYPOINT ["/usr/local/bin/aimetadatacleaner-url-tools"]
