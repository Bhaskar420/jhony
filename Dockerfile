FROM quay.io/prometheus/prometheus:latest

# Set working directory
WORKDIR /etc/prometheus

# Copy config file
COPY prometheus.yml /etc/prometheus/prometheus.yml

# Expose Prometheus port
EXPOSE 9090

# Correct entrypoint
ENTRYPOINT ["/bin/prometheus"]

# Correct command and arguments
CMD ["--config.file=/etc/prometheus/prometheus.yml", "--storage.tsdb.path=/prometheus"]


