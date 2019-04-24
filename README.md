# About this repository
This is a simple static website served by **nginx** and hosted by a **docker container**

# Docker useful commands:
Verify running containers<br>
$`docker ps`<br>

Verify **all** containers<br>
$`docker ps -a`<br>

Listing available images<br>
$`docker images`<br>

Removing a container<br>
$`docker rm container_name`<br>

Removing a image<br>
$`docker rmi hello-world`<br>

# Building the dockerfile:

creating a simple image
$`docker run --name myimg ubuntu:16.04`<br>

?
$`docker rm myimg`<br>

now lets make it interactive
$`docker run -it --name nginx1 ubuntu:16.04 bash`<br>

inside this folder, build the dockerfile content<br>
$`docker build --tag nginx:1.0 path`<br>

building the docker file without network bind<br>
$`docker run -it --name nginx-site nginx:1.0 bash`<br>

run the container and bind it to your local network port<br>
$`docker run -it -p 8080:80 --name nginx-site2 nginx:1.0 bash`<br>

start nginx
$`/etc/init.d/nginx start`

don't forget to have fun :-)

---

docker helpful insights: https://github.com/vconrado/mc9-worcap2018 <br>
html template source: https://github.com/toidicode/template

