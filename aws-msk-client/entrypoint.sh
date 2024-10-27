#!/bin/bash

script=$1; shift;
args="$@"

if [ -z "$script" ]; then
  /bin/bash
else
  /opt/kafka/bin/$script --bootstrap-server "$KAFKA_BROKERS" $args
fi
