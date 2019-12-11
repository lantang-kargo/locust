# Locust

[Locust](https://github.com/locustio/locust) load testing framework with Prometheus exporter from [ContainerSolutions/locust_exporter](https://github.com/ContainerSolutions/locust_exporter)

## Quick Start

```bash
docker build -t foo .

docker run -it \
-p 8089:8089 -p 9646:9646 \
-v /your/locustfile/location:/mnt/locust \
-e LOCUSTFILE_PATH=/mnt/locust/locustfile.py \
-e TARGET_URL='https://foobar.com' \
foo
```
## Explanation

localhost:8089 is the Locust Web UI address and localhost:9646/metrics is the Prometheus metrics endpoint.

For more environment variable settings, visit [Locust documentation](https://docs.locust.io/en/stable/running-locust-docker.html) and [locust exporter readme](https://github.com/ContainerSolutions/locust_exporter).