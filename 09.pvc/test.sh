kubectl create -f mongo-pv.yaml 
kubectl get pv
kubectl create -f mongo-pvc.yaml 
kubectl get pvc

kubectl create -f mongo-pod.yaml 
kubectl exec -it mongodb -- mongosh
use myDb
db.foo.insertOne({name:"LU"})
db.foo.find()

kubectl delete -f mongo-pod.yaml 
kubectl delete pvc mongodb-pvc
kubectl delete pv mongodb-pv