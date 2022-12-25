#!/bin/sh
if [ ! -f UUID ]; then
  UUID="7e5f1c46-55d8-4278-b7f6-bc8026efc008"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

