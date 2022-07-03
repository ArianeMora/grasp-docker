## Create and run the docker image for GRASP

#### Build image
```
docker build -t grasp-docker .  
```

#### Run grasp
i.e. within the grasp-docker image run the `grasp` command.
```
docker run -it grasp-docker -h
```
Instead of `-h` put in the commands you want to run with.

#### Save built image
```
docker save grasp-docker | gzip > grasp-docker.tar.gz
```

#### Load saved image
```
docker load < grasp-docker.tar.gz
```

#### Remove image
```
docker rmi grasp-docker
```

#### Remove any running containers
```
docker ps -a
```
Remove the desired containers via their ID with `docker rm ID`