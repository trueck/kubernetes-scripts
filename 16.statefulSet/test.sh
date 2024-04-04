kubectl proxy

curl localhost:8001/api/v1/namespaces/default/pods/kubia-0/proxy/
curl localhost:8001/api/v1/namespaces/default/pods/kubia-1/proxy/
curl -X POST -d "hey there kubia 0" localhost:8001/api/v1/namespaces/default/pods/kubia-0/proxy/

curl localhost:8001/api/v1/namespaces/default/services/kubia-public/proxy/

curl -X POST -d "bye bye" localhost:8001/api/v1/namespaces/default/services/kubia-public/proxy/