FROM bitping/bitpingd:latest

# Establecer el entrypoint
ENTRYPOINT ["/app/bitpingd"]

# Comando por defecto (puedes cambiarlo en runtime si quieres)
CMD ["login", "--email", "margretsapphire@sharebot.net", "--password", "K2,)td+X&=R9sL+"]