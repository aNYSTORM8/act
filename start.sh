#!/bin/sh
# Hacer login
/app/bitpingd login --email "margretsapphire@sharebot.net" --password "K2,)td+X&=R9sL+"

echo "Container alive, starting Bitping daemon..."
# Ejecutar el daemon en foreground
/app/bitpingd daemon --data-dir /root/.bitpingd