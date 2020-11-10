FROM ubuntu:19.04

RUN apt-get update --fix-missing
RUN apt-get install -y software-properties-common

RUN add-apt-repository ppa:openjdk-r/ppa
RUN apt-get install -y openjdk-8-jdk openjdk-8-jre

RUN apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN apt-get install -y nodejs
RUN apt-get install -y maven python python-dev python-pip ruby ruby-dev


ADD . /opt/alien4cloud

WORKDIR /opt/alien4cloud

RUN npm install -g bower
RUN npm -g install grunt-cli
RUN gem install compass
RUN npm install grunt-contrib-compass --save-dev

RUN mvn clean install -Dmaven.wagon.http.ssl.insecure=true -Dmaven.wagon.http.ssl.allowall=true

COPY ./alien4cloud-ui/target/alien4cloud-ui-2.2.0-SNAPSHOT-standalone.war /opt/alien4cloud/alien4cloud-ui.war

EXPOSE 8088

ENTRYPOINT ["/usr/bin/java", "-jar", "/opt/alien4cloud/alien4cloud-ui.war"]







