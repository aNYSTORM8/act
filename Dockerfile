FROM bitping/bitpingd:latest

# Variables de entorno (puedes dejar tu email/password aquí si no usas secrets)
ENV BITPING_EMAIL="YOUR_BITPING_EMAIL"
ENV BITPING_PASSWORD="YOUR_BITPING_PASSWORD"

# Shell como entrypoint para que CMD con && funcione
ENTRYPOINT ["/bin/sh", "-c"]

# CMD: login y mantener vivo
CMD "/app/bitpingd login --email $BITPING_EMAIL --password $BITPING_PASSWORD && echo 'Container alive' && tail -f /dev/null"