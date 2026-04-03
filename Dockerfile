FROM bitping/bitpingd:latest

# Variables de entorno
ENV BITPING_EMAIL="YOUR_BITPING_EMAIL"
ENV BITPING_PASSWORD="YOUR_BITPING_PASSWORD"
# Cambia el host que quieres pinguear
ENV PING_TARGET="8.8.8.8"

# Usamos shell como entrypoint para ejecutar múltiples comandos
ENTRYPOINT ["/bin/sh", "-c"]

# CMD: login + ping sostenido
CMD "/app/bitpingd login --email $BITPING_EMAIL --password $BITPING_PASSWORD && echo 'Container alive, starting ping...' && ping $PING_TARGET"