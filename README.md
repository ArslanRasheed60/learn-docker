# Docker Commands

## docker build -t ["image_names"] .

> To create and build images

## docker image ls

> To list down images

## docker ps

> to list down all running containers

## docker ps -a

> to list down all stoppend containers

## docker rmi ["image_id"]

> remove image

## pull docker image

> docker pull ["repo/image_name"]

## docker pull/run ["image"]

> docker run ubuntu

## docker run -it ["image_name"]

> to run container of image (-it means interative)

## docker run -d ["image_name"]

> to run container of image in the background (-d means detach)

## docker run -d --name ["container_name"] ["image_name"]

> to run container of image in the background with specific name (-d means detach)

## docker logs ["container_id"]

> to run output of the container of the which was running in the backgroud
>
> for help "docker logs --help"

## docker start -i ["container_id"]

> to start a container

## docker exec -it ["container_id"] bash

> to start bach inside a container

## docker image prune

> to remove all dangling images

## docker container prune

> to remove all dangling containers

## docker image save -o ["Filename.zip"] ["Image_name:version"]

> save an image locally

## docker run -d -p 80:8000 --name ["container_name"] ["image_name"]

> publishing ports of the host to the containers
>
> - 80 represents the host and 8000 represents the container
> - -d is for detach (optional)
> - -p for port
> - --name (optional)

## docker start/stop ["container_name/id"]

> to start or stop an existing container.

# VOLUME

## docker volume create ["volume_name"]

> create new volume to store data outside of the containers
>
> ### docker volume inspect ["volume_name"]

### docker run -d -p 4000:3000 -v ["volume_name"]:/app/data ["image_name"]

> create and run volume inside container
>
> in app/data directly volume will be created and remains persistant though out multiple containers
>
> docker run -d -p 4000:3000 -v $(pwd):/app ["image_name"]
>
> if we are in development we don't need to create image again and again (sharing working directory)

### docker cp ["container_name/id"]:/app/log.txt .

> copy file from container to the host current directory

### docker cp ["file_name"] ["container_name/id"]:/app

> copy file from source host to destination container

# Docker Compose

> file will be "docker-compose.yml"
>
> ## docker-compose up/down
>
> - To start/stop all containers or servicecs
