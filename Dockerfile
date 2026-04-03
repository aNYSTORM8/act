FROM bitping/bitpingd:latest

ENV BITPING_EMAIL="YOUR_BITPING_EMAIL"
ENV BITPING_PASSWORD="YOUR_BITPING_PASSWORD"

# Usamos shell como entrypoint para permitir varios comandos
ENTRYPOINT ["/bin/sh", "-c"]

# CMD para login y luego iniciar bitpingd en foreground
CMD "/app/bitpingd login --email $BITPING_EMAIL --password $BITPING_PASSWORD; echo 'Container alive — starting Bitping node...'; exec /app/bitpingd"