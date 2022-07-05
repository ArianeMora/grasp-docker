FROM anapsix/alpine-java
COPY bnkit.jar /home/user/bnkit.jar
COPY grasp /usr/local/bin
RUN ["chmod", "+x", "/usr/local/bin/grasp"]
RUN mkdir /data
