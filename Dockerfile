FROM bitping/bitpingd:latest

ENV BITPING_EMAIL="YOUR_BITPING_EMAIL"
ENV BITPING_PASSWORD="YOUR_BITPING_PASSWORD"
ENV PING_TARGET="8.8.8.8"

# Instalar ping
RUN apt-get update && apt-get install -y iputils-ping && rm -rf /var/lib/apt/lists/*

WORKDIR /app
COPY start.sh /app/start.sh
RUN chmod +x /app/start.sh

ENTRYPOINT ["/app/start.sh"]