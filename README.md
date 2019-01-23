# Maven Jetty Docker run as non root user

Example maven jetty docker image running as non root user.

# Clone
    git@github.com:chrisjsimpson/maven-jetty-docker-non-root-example.git 
    cd maven-jetty-docker-non-root-example

# Build
Make sure you include the "." at the end: 

     docker build -t myjetty --no-cache -f Dockerfile .

# Run

     docker run -p 8080:8080 myjetty

Visit http://localhost:8080/hello 

# Verify

- Get container id with `docker ps`
- Exec into container with `docker exec -it <container-id> bash`
- See `top` or `htop` to verify running as obp user (not root).

# Stop container

- Get container id with `docker ps`
- Stop container with `docker stop <container-id>`


## See also

https://github.com/carlossg/docker-maven#running-as-non-root

TODO: Package maven dependencies within build so no download needed during 
container run.
