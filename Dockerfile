FROM python

RUN pip install tensorboard && mkdir -p /tf-logs

ENTRYPOINT [ "tensorboard", "--logdir", "/tf-logs", "--port=6006" ]