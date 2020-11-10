# ASPIDE UI based on Alien4Cloud
[ASPIDE](https://www.aspide-project.eu/)
[Alien4Cloud](http://alien4cloud.github.io) |

ALIEN 4 Cloud stands for Application LIfecycle ENablement for Cloud.

FastConnect started this project in order to help enterprises adopting the cloud for their new and existing applications in an Open way. A4C has an Open-Source model (Apache 2 License) and standardization support in mind.

## Building Alien4Cloud

Alien4Cloud is written in java for the backend and requires a JDK 8 or newer (note that we test it using JDK 8 only for now).

- make sure you have a JDK 8 installed
- make sure you have Maven installed (team is using 3.0.5)
- install Ruby
- install Python
- install Node.js (team is using 6.14.4) to get npm command. Check here http://nodejs.org. Note that you need a recent version of npm (>= 5.5.x) in order to build a4c.
- install bower  
```sh
$ sudo npm install -g bower
```
- install grunt  
```sh
$ sudo npm -g install grunt-cli
```
- install compass  
```sh
$ gem install compass
```
- and grunt-contrib-compass  
```sh
$ npm install grunt-contrib-compass --save-dev
```  

run the folowing command to build the project:  
```sh
$ mvn clean install -Dmaven.wagon.http.ssl.insecure=true -Dmaven.wagon.http.ssl.allowall=true
```
## Running Alien4Cloud

- launch the backend
```sh
$ cd alien4cloud-ui
$ mvn spring-boot:run
```
- launch the frontend
```sh
$ cd alien4cloud-ui
$ grunt serve
```
