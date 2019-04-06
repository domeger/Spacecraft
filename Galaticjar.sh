docker start pokecraft
wait 
sleep 30
docker stop pokecraft
wait 
cp $PWD/server.properties.backup $PWD/data/server.properties
cd $PWD/data/mods && wget -O Pixelmon-1.12.2-7.0.5.jar https://dl.reforged.gg/2HKQPRx;
wait 
docker start pokecraft
wait 
sleep 30
docker stop pokecraft
pid=$!
echo $pid Please start the server with Docker run pokecraft
