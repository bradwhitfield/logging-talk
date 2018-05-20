# Call to the events api to watch what happens in the Docker daemon.
curl --unix-socket /var/run/docker.sock http://localhost/events