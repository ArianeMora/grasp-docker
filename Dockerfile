FROM anapsix/alpine-java
COPY bnkit.jar bnkit.jar
COPY grasp grasp
RUN ["chmod", "+x", "grasp"]
ENTRYPOINT ./grasp
CMD ["-h"]