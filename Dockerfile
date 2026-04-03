FROM bitping/bitpingd:latest

# Variables de entorno
ENV BITPING_EMAIL="YOUR_BITPING_EMAIL"
ENV BITPING_PASSWORD="YOUR_BITPING_PASSWORD"
ENV PING_TARGET="8.8.8.8"  # Cambia por el host que quieras pinguear

# Usamos shell como entrypoint para ejecutar múltiples comandos
ENTRYPOINT ["/bin/sh", "-c"]

# CMD: login + ping sostenido
CMD "/app/bitpingd login --email $BITPING_EMAIL --password $BITPING_PASSWORD && echo 'Container alive, starting ping...' && ping $PING_TARGET"