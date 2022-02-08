#!/bin/bash

tensorboard --logdir /tf-logs --port 6006 --host 0.0.0.0 &

while true
do
  rclone sync :${RCLONE_TYPE}:tf-logs /tf-logs ${RCLONE_SYNC_ARGS}
  sleep 60
done
