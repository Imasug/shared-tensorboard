FROM python

RUN apt update && apt install -y cron && \
    pip install tensorboard && mkdir -p /tf-logs && \
    curl https://rclone.org/install.sh | bash

EXPOSE 6006

WORKDIR /app
COPY . .
RUN chmod +x run.sh

CMD ["./run.sh"]
