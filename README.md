# Docker Images For Apache2 incl. mod_mono and Postgres

This docker environment contains a container with apache2 and the mod_mono module to write ASP.NET apps and a container with a postgres database.
**Notice:** This is just an example project to experiment with ASP.NET. You may not want to use it in 
production projects. 

## Setup
To set up the environment use the following shell commands: 
Build the images:
```
docker-compose build
```
Run the containers:
```
docker-compose run
```

## Usage
If your containers are running you can visit a sample page at: **localhost:80**
This page is located at the container **mono-app-container** in the directory **/var/www**.
This directory is mounted to the host via *source/app*. You can live edit the sample file and 
immediately view the results.
To can connect your DB administration tool to the port **5432**. The password and user is
set in the docker-compose build process and can be edited in the *docker-compose.yml* file.

## Postgres driver
The mono-app-image contains a Npgsql Postgres driver that is installed in the file **/app/Dockerfile**

