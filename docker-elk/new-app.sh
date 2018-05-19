export IP=localhost

docker run --name hello-app -d -l app-name=hello-app ubuntu bash -c "while true; do echo hello; sleep 5; done"

curl -XPOST -D- "http://${IP}:5601/api/saved_objects/index-pattern" \
    -H 'Content-Type: application/json' \
    -H 'kbn-version: 6.2.3' \
    -d '{"attributes":{"title":"index_hello-app-*","timeFieldName":"@timestamp"}}'