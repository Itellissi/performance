@echo off

@rem start dapr for testing
dapr run --config dapr/configuration.yaml --components-path dapr/components --dapr-http-port 8888 --metrics-port 9090 