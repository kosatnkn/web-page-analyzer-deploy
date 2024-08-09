# -------------
# Built Client
# -------------
  FROM kosatnkn/web-page-analyzer-client:latest AS builder

  # --------
  # Running
  # --------
  FROM nginx:alpine

  # Copy the built React app to Nginx's web server directory
  COPY --from=builder /app/build /usr/share/nginx/html

  # Expose port 80 for the Nginx server
  EXPOSE 80

  # Start Nginx when the container runs
  CMD ["nginx", "-g", "daemon off;"]
