Question 4 - Docker Flask App

This folder contains a simple Flask application that runs inside a Docker container. The task was to build the image, run the container, and explore some internal and external details of Docker.
Steps to Build the Docker Image

Use the following command to build the image from the Dockerfile:

docker build -t flask-app .

This creates a Docker image with the name flask-app.
Steps to Run the Docker Container

Run the following command to start a container from the image:

docker run -d -p 5000:5000 --name flask-container flask-app

    -d runs the container in detached mode (in the background).

    -p 5000:5000 maps port 5000 of your machine to port 5000 inside the container.

    --name gives the container a name (flask-container).

Testing the Flask App

Once the container is running, you can test the app using:

curl http://localhost:5000

It should return:

Hello, World!

Checking Container Internals

To go inside the container and explore its environment, use:

docker exec -it flask-container /bin/sh

Inside the container, you can try:

    ps aux to view running processes.

    ip addr to view the container’s IP address.

    env to view environment variables.

Use exit to leave the container shell.
Viewing External Docker Information

To see running containers:

docker ps

To inspect details about the container:

docker inspect flask-container

To see container logs:

docker logs flask-container
