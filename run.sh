#ABOUT this bash script
#CHModed it like this: 	chmod +x run.sh
#execute it doing this: ./run.sh
#have phun!


#Stops the currently runing container, if there is one
echo "Running: docker stop brobath-api"
docker stop brobath-api

#Deletes the current "brobath-test" docker container
echo "Running: docker container rm brobath-api"
docker container rm brobath-api

#To build the docker image:
#NOTE: you must be in the Dockerfile directory with tour terminal
echo "Running: docker build -t brobath_api ."
docker build -t brobath_api .

#To run naming it and on background:
echo "Running: docker run --name brobath-api -d --publish 5001:5001 brobath_api"
docker run --name brobath-api -d --publish 5001:5001 brobath_api

#Prints the status of the running containers after deploying this one!
echo "Running: docker ps"
docker ps
