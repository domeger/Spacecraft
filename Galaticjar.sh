docker start pokecraft
wait 
sleep 5
docker stop pokecraft
wait 
cp $PWD/server.properties.backup $PWD/data/server.properties

if [[-d "$PWD/data/mods"]];
 
then 
	cd $PWD/data/mods && wget -O Pixelmon-1.12.2-7.0.5.jar https://dl.reforged.gg/2HKQPRx
else
	echo 'mods folder doesn't exist, the Docker container might not have populated the data folder. Start stop Docker manually'
fi 
	
wait 
docker start pokecraft
wait 
sleep 30
docker stop pokecraft
pid=$!
echo $pid Please start the server with Docker run pokecraft
