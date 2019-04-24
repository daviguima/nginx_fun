# About this repository
This is a simple static website served by **nginx** and hosted by a **docker container** </br>

# Docker useful commands:
Running the hello-world container image </br>
$`docker run --name hello hello-world` </br>

Verify running containers </br>
$`docker ps` </br>

Verify **all** containers </br>
$`docker ps -a` </br>

Listing available images </br>
$`docker images` </br>

Removing a container </br>
$`docker rm container_name` </br>

Removing a image </br>
$`docker rmi hello-world` </br>

Connecting terminal to running container </br>
$`docker rmi hello-world` </br>

Exit bash without closing the container (detach) </br>
$`Ctrl+p then Ctrl+q` </br>

Connect bash to running container (attach) </br>
$`docker attach container_name` </br>

# Building the dockerfile:
Creating a simple image </br>
$`docker run --name myimg ubuntu:16.04` </br>

Deleting it </br>
$`docker rm myimg` </br>

Ok, now lets make it interactive so we can install a web server </br>
$`docker run -it --name nginx-site1 ubuntu:16.04 bash` </br>

Install NGINX inside it </br>
$`apt-get update` </br>
$`apt-get install -y nginx` </br>

Start NGINX </br>
$`/etc/init.d/nginx start` </br>

Use another terminal and check your browser at the container's IP address </br>
$`docker inspect nginx-site1` </br>

Nice container, lets make it an image so we can re-use it </br>
$`docker commit nginx-site1 ngxr` </br>

inside this folder, build the dockerfile content </br>
$`docker build --tag nginx:1.0 path` </br>

building the docker file without network bind </br>
$`docker run -it --name nginx-site nginx:1.0 bash` </br>

run the container and bind it to your local network port </br>
$`docker run -it -p 8080:80 --name nginx-site2 nginx:1.0 bash` </br>

start nginx </br>
$`/etc/init.d/nginx start` </br>

Don't forget to have fun :-)

---

docker helpful insights: https://github.com/vconrado/mc9-worcap2018 </br>
html template source: https://github.com/toidicode/template

