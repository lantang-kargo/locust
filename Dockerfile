FROM containersol/locust_exporter:v0.2.0 AS builder
ENTRYPOINT ["/usr/bin/env"]

FROM locustio/locust::0.13.2
COPY --from=builder /go/bin/locust_exporter /go/bin/locust_exporter
COPY run.sh run.sh
EXPOSE 9646
EXPOSE 8089
EXPOSE 5557
EXPOSE 5558
CMD ["./run.sh"]
