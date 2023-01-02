---
title: What is Apache Kafka?
image: kafka
tags:
- Open Source
- LinkedIn
- Middleware
- Stream Processing
- Message Broker
---
## Description

Apache Kafka is a framework implementation of a software bus using stream-processing.

It is an open-source software platform developed by the Apache Software Foundation written in Scala and Java.

The project aims to provide a unified, high-throughput, low-latency platform for handling real-time data feeds.

Kafka can connect to external systems (for data import/export) via Kafka Connect and provides Kafka Streams, a Java stream processing library.

Kafka uses a binary TCP-based protocol that is optimized for efficiency and relies on a "message set" abstraction that naturally groups messages together to reduce the overhead of the network roundtrip.

This leads to larger network packets, larger sequential disk operations, contiguous memory blocks which allows Kafka to turn a bursty stream of random message writes into linear writes.

**Original Author:** LinkedIn

**Website:** kafka.apache.org

**Repository:**	github.com/apache/kafka

**Operating system(s):** Cross-platform

**Written in:**	Scala, Java