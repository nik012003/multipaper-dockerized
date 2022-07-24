#!/bin/sh
echo $SERVER_PROPIETIES | jq -r 'keys[] as $k | "\($k)=\(.[$k] )"' > server.properties
java -Dcom.mojang.eula.agree=true -DmultipaperMasterAddress=$MASTER_ADDRESS:35353 -jar multipaper.jar