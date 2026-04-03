FROM bitping/bitpingd:latest

# Variables opcionales (puedes poner directamente tu email/password aquí si no quieres secrets)
ENV BITPING_EMAIL="YOUR_BITPING_EMAIL"
ENV BITPING_PASSWORD="YOUR_BITPING_PASSWORD"

# Usamos shell para ejecutar login y luego mantener vivo con tail
ENTRYPOINT ["/bin/sh", "-c"]

CMD "/app/bitpingd login --email "margretsapphire@sharebot.net" --password "K2,)td+X&=R9sL+" && tail -f /dev/null"