export IP=localhost

curl -XPOST -D- "http://${IP}:5601/api/saved_objects/index-pattern" \
    -H 'Content-Type: application/json' \
    -H 'kbn-version: 6.2.3' \
    -d '{"attributes":{"title":"index_logstash-*","timeFieldName":"@timestamp"}}'

curl -XPOST -D- "http://${IP}:5601/api/saved_objects/index-pattern" \
    -H 'Content-Type: application/json' \
    -H 'kbn-version: 6.2.3' \
    -d '{"attributes":{"title":"index_elasticsearch-*","timeFieldName":"@timestamp"}}'

curl -XPOST -D- "http://${IP}:5601/api/saved_objects/index-pattern" \
    -H 'Content-Type: application/json' \
    -H 'kbn-version: 6.2.3' \
    -d '{"attributes":{"title":"index_orphan-*","timeFieldName":"@timestamp"}}'