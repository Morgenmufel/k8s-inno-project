#!/bin/sh
echo "Kafka broker is available, creating topics..."

kafka-topics --create --topic "${TOPIC_NAME_COMMENTS}" --bootstrap-server kafka:9092 --partitions 3 --replication-factor 1 || true
kafka-topics --create --topic "${TOPIC_NAME_LIKES}" --bootstrap-server kafka:9092 --partitions 3 --replication-factor 1 || true

echo "Topics created (or already exist)."
