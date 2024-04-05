docker build -t edwin/fortune:v1 .
kubectl create -f pod.yaml 
kubcetl get po
kubectl exec fortune -c web-server -- curl localhost

kubectl delete -f pod.yaml 

kubectl create -f mongo.yaml 
kubectl exec -it mongodb -- mongosh
use myDb
db.foo.insertOne({name:"bar"})
db.foo.find()

kubectl delete po mongodb
kubectl exec -it mongodb -- mongosh
use myDb
db.foo.find()