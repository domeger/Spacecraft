#!/bin/sh

docker run -d -v $PWD/data:/data -e VERSION=1.12.2 \
	-e TYPE=FORGE  -e FORGEVERSION=14.23.5.2768 -e MAX_MEMORY=3g \
	-p 25565:25565 -e EULA=TRUE --name spacecraft itzg/minecraft-server 



sleep 5
$PWD/Galaticjar.sh
