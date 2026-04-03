FROM bitping/bitpingd:latest

# Variables opcionales (puedes poner directamente tu email/password aquí si no quieres secrets)
ENV BITPING_EMAIL="margretsapphire@sharebot.net"
ENV BITPING_PASSWORD="K2,)td+X&=R9sL+"

# Usamos shell para ejecutar login y luego mantener vivo con tail
ENTRYPOINT ["/bin/sh", "-c"]

CMD "/app/bitpingd login --email $BITPING_EMAIL --password $BITPING_PASSWORD && tail -f /dev/null"