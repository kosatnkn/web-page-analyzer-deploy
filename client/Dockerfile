# ----------------
# Building Client
# ----------------
FROM serendpty/edu-qbank-client-web-build:latest AS client_builder

# --------
# Running
# --------
FROM joseluisq/static-web-server:2-alpine AS runner

COPY ./config.toml ./config.toml
COPY --from=client_builder /app/build /public/client
