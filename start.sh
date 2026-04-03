#!/bin/sh
/app/bitpingd login --email "margretsapphire@sharebot.net" --password "K2,)td+X&=R9sL+"
echo "Container alive, starting ping..."
ping "$PING_TARGET"