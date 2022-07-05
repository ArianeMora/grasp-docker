## Create and run the docker image for GRASP

#### Build image
```
docker build -t grasp-docker .  
```

#### Run grasp
i.e. within the grasp-docker image run the `grasp` command.
```
docker run -it grasp-docker grasp -h
```

Instead of `-h` put in the commands you want to run with.

```
docker run -it -v {full path to where your data is located}:/data grasp-docker grasp -aln /data/{name of your alignment file}.aln -nwk /data/{name of your newick file}.nwk -out /data
```
for example, for me the command looks like:

```
docker run -it -v /Users/coolusername/Documents/code/grasp/data:/data grasp-docker grasp -aln /data/test_6.aln -nwk /data/test_6.nwk -out /data
```
Once I run that, I get a file called: `GRASP_ancestors.fasta` appearing my in folder: `/Users/coolusername/Documents/code/grasp/data`.

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