docker start pokecraft
wait process_id=$!
sleep 30
docker stop pokecraft
wait process_id=$!
cp $PWD/server.properties.backup $PWD/data/server.properties
if [-d "$PWD/data/mods"]; then 
cd $PWD/data/mod && wget -O Pixelmon-1.12.2-7.0.5.jar https://dl.reforged.gg/2HKQPRx; fi
wait process_id=$!
docker start pokecraft
wait process_id=$!
sleep 30
docker stop pokecraft
pid=$!
echo $pid Please start the server with Docker run pokecraft
