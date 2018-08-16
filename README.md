# json-test-api
Json Rest API with zeit-now, json-server and docker

`now --docker`

`curl https://json-test-api-esuwjacamo.now.sh/people | jq`

`curl https://json-test-api-esuwjacamo.now.sh/people | jq .[] | jq .first_name`
