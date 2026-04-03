# Use the official Bitping image as base
FROM bitping/bitpingd:latest

# Set environment variables for login
ENV BITPING_EMAIL="margretsapphire@sharebot.net"
ENV BITPING_PASSWORD="K2,)td+X&=R9sL+"

# Use a shell to allow multiple commands
ENTRYPOINT ["/bin/sh", "-c"]

# Login and keep the container alive
CMD "/app/bitpingd login --email $BITPING_EMAIL --password $BITPING_PASSWORD && echo 'Container is now alive' && tail -f /dev/null"