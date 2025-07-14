# Lab13 – Static Site (Dockerized)

This project is a part of **Lab13** for the Software Design and Architecture course.  
It demonstrates how to build and deploy a simple static website using **Docker**.

The static website contains:
- Some discription 
- A beautiful background image

The site is containerized using **Docker** and served through the **Nginx** web server.

## Project Structure

lab13/
├── Dockerfile
├── index.html
└── style.css

How to run this project.

it is supposed that you have docker installed and running on your machine

Use the above directrory structure and run the following commands in terminal
you should navigate to lab13 before running these commands

1>>     docker buildx build --load -t lab13:latest .

the dot is necessary at the end of the command as this tells to search in the current dir

'buildx' build supports multi-platform builds 
but 
'--load' tells Docker to load it into your local Docker engine like a normal build.

'-t lab13:latest' tags the image for easy reference.

'.' means the Dockerfile is in the current directory.


2>>     docker run -d -p 3000:80 lab13:latest   

Runs the container in detached mode (-d).

Maps host port 3000 to container port 80 (where Nginx serves content).

If 3000 is busy: change it (e.g., -p 4000:80).

if your port 3000 is already in use use some other port




IF THESE steps are correctly performed then you can visit http://localhost:3000
on you browser and see the static page.
 
