# Dockerized Create React Application with nginx reverse proxy

## Create local virtual host

Enter the hosts file
`sudo vim /etc/hosts`

Write the following entry to the file

`127.0.0.1 dockerapp.test www.dockerapp.test`


## Run the application

### Run the docker container

`docker-compose up -d`

### Open the app in the browser
Enter in the browser url  if you have configured the local virtual host 

`dockerapp.test` or `www.dockerapp.test`

> NOTE: make sure that there is no other service listening to port 80, this might be another nginx server for example


## Nginx notes

### Check config files for syntax errors
`docker-compose exec nginx nginx -t`

### Reload server
`docker-compose exec nginx nginx -s reload`


