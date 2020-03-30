# NGINX static server docker

### This is the second component for the IDP Course project.

It is meant to serve static files for the Cinema App, like posters and trailers. It is based on the plain NGINX docker container and added config files on top of it.

A volume need to be installed at ***/var/www/static-server*** in order to serve static files. In my current setup, using docker-compose descirption file the following configuration is used.

```
static: # the container 
    image: ursescu/idp-static
    container_name: static
    restart: always
    ports:
      - "8082:80" # exporting the port to the host
    volumes:
      - ./static/data:/var/www/static-server # volume mount
```

The file structure of volume mounted should be matching the following.

```
volume:
    static:
        # here are the files to be served
    index.html # something to show on root location
    404.html # showing when something is not found
```
