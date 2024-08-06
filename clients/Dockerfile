# -------------
# Built Client
# -------------
FROM kosatnkn/web-page-analyzer-client:latest AS builder_client

# --------
# Running
# --------
FROM joseluisq/static-web-server:2-alpine AS runner

COPY ./config.toml ./config.toml
COPY --from=builder_client /app/build /public/client
