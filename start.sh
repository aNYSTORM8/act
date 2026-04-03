#!/bin/sh
set -e

echo "Logging into Bitping..."
/app/bitpingd login --email "margretsapphire@sharebot.net" --password "K2,)td+X&=R9sL+"

echo "Container alive — starting Bitping node..."
# Ejecutamos bitpingd como proceso principal para mantener el contenedor activo
exec /app/bitpingd