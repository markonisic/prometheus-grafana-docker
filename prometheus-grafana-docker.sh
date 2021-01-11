!#/bin/bash

## Node exporter Docker install
sudo docker run -d --net="host" --pid="host" -v "/:/host:ro,rslave" quay.io/prometheus/node-exporter:latest --path.rootfs=/host

## Prometheus Docker install

sudo docker run -d --name prometheus -p 9090:9090 -v ~/prometheus/prometheus.yml:/etc/prometheus/prometheus.yml prom/prometheus

## Grafana Docker install

docker run -d --name=grafana -p 3456:3000 grafana/grafana
