# Maven Jetty Docker run as non root user

Example maven jetty docker image running as non root user.

# Build

     `docker build -t myjetty --no-cache -f Dockerfile .`

# Run

     `docker run -e OBP_API_HOSTNAME=127.0.0.1 -p 8080:8080 myjetty`

# Verify

- Get container id with `docker ps`
- Exec into container with `docker exec -it <container-id> bash`
- See `top` or `htop` to verify running as obp user (not root).


TODO: Package maven dependencies within build so no download needed during 
container run.
