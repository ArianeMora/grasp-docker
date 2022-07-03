## Create and run the docker image for GRASP

#### Build image
```
docker build -t grasp-docker .  
```

#### Run grasp
i.e. within the grasp-docker image run the `grasp` command.
```
docker run --name grasp-docker grasp
```

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
docker image rm grasp-docker
```