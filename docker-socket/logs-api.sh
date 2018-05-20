# Start an app that echos to STDOUT, and get the containerid.
containerid=$(docker run --name hello-app -d ubuntu bash -c "while true; do echo hello; sleep 5; done")

# Using the unix socket and curl, you can make REST calls to the Docker daemon.
curl --unix-socket /var/run/docker.sock "http://localhost/containers/${containerid}/logs?stderr=1&stdout=1&follow=1"