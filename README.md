### docker command

1. docker --version <br>

Clear the docker compilation/build cache<br>
2. docker system prune <br>

Building the docker image
3. docker build -t <docker login>/<app name>:<version> . <br>
docker build -t <claarree>/vttp5-ssf-day13l:v0.0.1 .

Check docker image create in local docker repo <br>
4. docker image ls <br>

Run the image inside the container <br>
5. docker run -d -t -p <exposed public port>:<application server port> <image name> <br>

Check docker container running <br>
6. docker container ls

Stop a running container <br>
Container id is seen when step 6 is done <br>
7. docker stop <container id>

To start a stopped container <br>
Container id can be seen from docker desktop <br>
8. docker start <container id> 

To remove a container <br>
9. docker rm <container id>

To delete image<br>
Image id can be seen from docker desktop
10. docker rmi <image id>

### docker compile and push to railway
1. In railway.app, create a service (linked the project)
2. Create the environment variable, SERVER_PORT=3000
3. In your project root folder (command prompt), execute `railway login`
4. Link the project, execute `railway link`
5. Deploy the project to railway, execute `railway up`

### docker push to docker hub
1. make sure image is build and the container exists
2. Push image to docker hub, execute `docker push <image name>:<version><image id>`
