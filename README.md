# json-test-api

> Json Rest API with zeit-now, json-server and docker

* Deploy to Zeit Now with command : `now --docker`

* Testing json file : `curl https://json-test-api.now.sh/people | jq .[] | jq .first_name`
