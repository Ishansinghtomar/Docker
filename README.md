# Docker

docker build .
docker image ls
docker image rm 
docker build -t ishan-image .

detach mode -d to keep cli active 

--name "you give "  "name of image "

docker run -d --name node-app ishan-app


docker stop node-app  
docker rm node-app  

docker run -p 4000:3000 -d --name node-app ishan-image

taking :sending to 
4000:3000


docker ps

docker exec -it node-app bash 

node -app ===> container
exit 

it(interactive)

code not updated once changes are made
// in order to re run 
build image and run again ,rest part will be cached only copy file will run

solution to this problem 

removed the container =>

Volume is the solution 
-v ===> bind volume we are using here 



docker run -v ${pwd} /app-p 4000:3000 -d --name node-app ishan-image
${pwd}

 docker run -v ${pwd}:/app -p 4000:3000 -d --name node-app ishan-image

 application is getting updated but express servers and node need to be restarted therfore node mon is required


 docker ps -a shows all the containers 

 docker logs node-app


 https://www.youtube.com/watch?v=gm_L69NHuHM

 docker run -v ${pwd}:/app:ro -p 4000:3000 -d --name node-app ishan-image

read only (if i change value in image then change should not be reflected in local container )

env varianle setup

docker volume ls 
docker rm node-app -fv  (remove volume )
or
docker volume prune 

docker-compose up -d
docker-compose up -d --build (force new build )


