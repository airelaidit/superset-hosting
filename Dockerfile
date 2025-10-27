# Use the official Apache Superset image
FROM apache/superset:latest

# Set environment variables
ENV SUPERSET_SECRET_KEY=mysecret123
ENV ADMIN_USERNAME=admin
ENV ADMIN_FIRST_NAME=Admin
ENV ADMIN_LAST_NAME=User
ENV ADMIN_EMAIL=admin@example.com
ENV ADMIN_PASSWORD=admin123

# Default command to initialize and run Superset
CMD ["bash", "-c", "superset db upgrade && \
    superset fab create-admin --username $ADMIN_USERNAME --firstname $ADMIN_FIRST_NAME --lastname $ADMIN_LAST_NAME --email $ADMIN_EMAIL --password $ADMIN_PASSWORD && \
    superset init && \
    superset run -h 0.0.0.0 -p 8088"]
