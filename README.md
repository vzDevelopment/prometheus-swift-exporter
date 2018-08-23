# Prometheus OpenStack exporter

Exposes high level [OpenStack](http://www.openstack.org/) metrics to [Prometheus](https://prometheus.io/).


# Deployment

## Requirements

Install prometheus_client:
```
pip install prometheus_client
```

## Installation

```
# Copy example config in place, edit to your needs
sudo cp prometheus-swift-exporter.yaml /etc/prometheus/

## Systemd
# Install job
sudo cp prometheus-swift-exporter.service /etc/systemd/system/


# create default config location
sudo sh -c 'echo "CONFIG_FILE=/etc/prometheus-swift-exporter/prometheus-swift-exporter.yaml">/etc/default/prometheus-swift-exporter'


# Start
sudo start prometheus-swift-exporter
```

Or to run interactively:

```
./prometheus-swift-exporter prometheus-swift-exporter.yaml

```

# Configuration

Configuration options are documented in prometheus-swift-exporter.yaml shipped with this project

# FAQ

## Why hardcode swift host list?

Same as above, there is no way to retrieve swift hosts using API.
