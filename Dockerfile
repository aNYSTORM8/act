FROM bitping/bitpingd:latest

ENV BITPING_EMAIL="YOUR_BITPING_EMAIL"
ENV BITPING_PASSWORD="YOUR_BITPING_PASSWORD"
ENV PING_TARGET="8.8.8.8"

WORKDIR /app
COPY start.sh /app/start.sh
RUN chmod +x /app/start.sh

ENTRYPOINT ["/app/start.sh"]