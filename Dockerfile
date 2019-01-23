FROM maven:3-jdk-8
ENV LANG=C.UTF-8 LANGUAGE=C LC_ALL=C.UTF-8 TERM=linux
RUN \
 apt-get update &&\
 apt-get upgrade --yes &&\
 apt-get install --yes bash curl git vim htop telnet net-tools && \
 apt-get clean

RUN adduser --gecos "First Last,RoomNumber,WorkPhone,HomePhone" --disabled-password obp
USER obp
WORKDIR /home/obp

EXPOSE 8080
# Run subsequent commands as obp user
USER obp
ADD pom.xml /home/obp
ADD src /home/obp/src
RUN mvn package
# Run script
CMD mvn jetty:run 
