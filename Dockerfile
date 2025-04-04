FROM prom/prometheus:latest

# Add Prometheus config file
COPY prometheus.yml /etc/prometheus/prometheus.yml

# Expose Prometheus web UI port
EXPOSE 9090

# Start Prometheus
CMD ["/bin/prometheus", "--config.file=/etc/prometheus/prometheus.yml"]


