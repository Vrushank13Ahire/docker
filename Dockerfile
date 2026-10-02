FROM nginx:alpine

RUN adduser -D -u 1000 appuser

WORKDIR /app


COPY --chown=appuser:appuser . .

EXPOSE 8080

HEALTHCHECK --interval=30s --timeout=3s \
  CMD curl -f http://localhost/ || exit 1


USER appuser

