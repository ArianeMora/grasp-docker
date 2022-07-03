FROM anapsix/alpine-java
COPY bnkit.jar bnkit.jar
CMD ["java","-jar","bnkit.jar"]