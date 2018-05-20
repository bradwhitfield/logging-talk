# Start a container
docker run -d --name httpd httpd

# See that the CMD issued is PID 1, and children of it, but the exec is not
docker exec -it httpd ps -ef

# Docker logs shows the output of PID 1 and it's children, but not the exec command.
docker logs httpd

# Cleanup
docker rm -f httpd