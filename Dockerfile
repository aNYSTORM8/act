FROM bitping/bitpingd:latest

ENTRYPOINT ["/bin/sh", "-c"]

CMD /app/bitpingd login --email "margretsapphire@sharebot.net" --password "K2,)td+X&=R9sL+" && tail -f /dev/null