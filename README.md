# Remote Data Science (Dockerized)

This repo contains configs and files to boot up a data science enviroment remotely. This requires a machine with docker installed.

Getting it to run is as simple as: `docker-compose up`.

Both data and notebook folders are mounted. Keeps your code and data separate!

By default, it installs a few commonly used data science libraries (refer to environment.yml). It also exposes port 8080 on the machine to access jupyter notebook server in the newly created environment. Feel free to modify any configuration to suit your requirements.