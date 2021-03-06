FROM quay.io/pires/docker-elasticsearch-kubernetes:6.2.2_1

ENV NODE_NAME="" \
    ES_TMPDIR="/tmp"

# Install Prometheus plug-in
RUN /elasticsearch/bin/elasticsearch-plugin install https://github.com/vvanholl/elasticsearch-prometheus-exporter/releases/download/6.2.2.0/elasticsearch-prometheus-exporter-6.2.2.0.zip
