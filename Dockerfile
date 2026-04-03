FROM bitping/bitpingd:latest

ENV BITPING_EMAIL="YOUR_BITPING_EMAIL"
ENV BITPING_PASSWORD="YOUR_BITPING_PASSWORD"

WORKDIR /app
COPY start.sh /app/start.sh
RUN chmod +x /app/start.sh

# Usamos start.sh como entrypoint
ENTRYPOINT ["/app/start.sh"]