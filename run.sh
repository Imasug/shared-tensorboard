#!/bin/bash

tensorboard --logdir /tf-logs --port 6006 --host 0.0.0.0 &

while true
do
  rclone sync :drive:tf-logs /tf-logs --drive-shared-with-me
  sleep 60
done
