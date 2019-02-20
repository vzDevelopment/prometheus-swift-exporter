#!/bin/bash

touch /etc/default/prometheus-swift-exporter
/usr/bin/systemctl enable prometheus-swift-exporter.service
