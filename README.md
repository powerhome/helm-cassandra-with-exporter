# cassandradc-with-exporter

## Introduction
This helm chart deploys into a Kubernetes cluster a `cassandraDatacenter` which is a custom resource managed by the [Cassandra Operator](https://github.com/datastax/cass-operator).

## Prerequisites
You need to have `Cassandra Operator` deployed in the **namespace** where you are planning to deploy this chart. To do that follow the instructions in the [Cassandra Operator repo](https://github.com/datastax/cass-operator/tree/v1.3.0).

## Architecture
This chart will deploy:
* CassandraDatacenter - which is basically a statefulset with cassandra pods. The difference is that this chart adds an extra container in the pod to expose prometheus metrics using the [cassandra-exporter](https://github.com/criteo/cassandra_exporter).
* A service for the `cassandra-exporter`
* A serviceMonitor for prometheus to scrape metrics from.

## Installation
Download the chart and then you can just install it:
```
helm install -f values.yaml releaseName ./charts/cassandradc-with-exporter
```

### Configuration
Fill a value file using as example this chart `values.yaml`.
