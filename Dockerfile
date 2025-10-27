# Use official Apache Superset image
FROM apache/superset:latest

# Expose port 8088 (Superset default)
EXPOSE 8088

# Optional: Copy custom config if you want to enable public dashboards
# COPY superset_config.py /app/pythonpath/

# Run the Superset server
CMD ["superset", "run", "-h", "0.0.0.0", "-p", "8088"]
