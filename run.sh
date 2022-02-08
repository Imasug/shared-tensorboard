#!/bin/bash

tensorboard --logdir /tf-logs --port 6006 --host 0.0.0.0 &

while true
do
  rclone sync :${BACKEND}:tf-logs /tf-logs
  sleep 60
done
