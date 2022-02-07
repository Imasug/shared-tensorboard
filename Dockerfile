FROM python

RUN pip install tensorboard && mkdir -p /tf-logs

EXPOSE 6006

ENTRYPOINT [ "tensorboard", "--logdir", "/tf-logs", "--port=6006", "--host=0.0.0.0" ]
