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
`Ctrl+p` then `Ctrl+q` </br>

Connect bash to running container (attach) </br>
$`docker attach container_name` </br>

Restart an existing container after it exited and your changes are still there </br>
$`docker start -i $(docker ps -q -l)` </br>
from: https://stackoverflow.com/questions/21928691/how-to-continue-a-docker-container-which-has-exited

# Starting NGINX and hosting a static website:
Create a simple nginx-compatible linux image </br>
$`docker run --name myimg ubuntu:18.04` </br>

Deleting it </br>
$`docker rm myimg` </br>

Ok, now lets make it interactive so we can install a web server </br>
$`docker run -it --name mysite ubuntu:18.04` </br>

Install NGINX inside it </br>
$`apt-get update` </br>
$`apt-get install -y nginx` </br>

We can also do it programmatically by building the `dockerfile` content. </br> 
(this will run the scripted routines in the `dockerfile` inside this folder)</br>
$`docker build --tag ngxr:v1 <path>` </br>

Start NGINX </br>
$`/etc/init.d/nginx start` </br>

Detach and inspect your container's IP address (Try it on your browser!)</br>
$`docker inspect nginx-site1` </br>

Nice container, lets make it an image so we can re-use it </br>
$`docker commit nginx-site1 ngxr` </br>

building the docker file without network bind </br>
$`docker run -it --name nginx-site nginx:1.0 bash` </br>

run the container and bind it to your local network port (This is called EXPOSE and can only be done when creating it!!!) </br>
$`docker run -it -p 8080:80 --name nginx-site2 nginx:1.0 bash` </br>

start nginx </br>
$`/etc/init.d/nginx start` </br>

Don't forget to have fun :-)

---

docker helpful insights: https://github.com/vconrado/mc9-worcap2018 </br>
html template source: https://github.com/toidicode/template

