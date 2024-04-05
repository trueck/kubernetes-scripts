docker build -t edwin/kubia-pet:v2 .

kubectl get statefulSet

kubectl create -f kubia-statefulSet.yaml 
kubectl get pvc
kubectl get pv
kubectl get po
kubectl get svc

kubectl create -f svc-headless.yaml 


kubectl proxy

curl localhost:8001/api/v1/namespaces/default/pods/kubia-0/proxy/
curl localhost:8001/api/v1/namespaces/default/pods/kubia-1/proxy/

curl -X POST -d "hey there kubia 0" localhost:8001/api/v1/namespaces/default/pods/kubia-0/proxy/

kubectl create -f svc-public.yaml 


curl localhost:8001/api/v1/namespaces/default/services/kubia-public/proxy/

curl -X POST -d "bye bye" localhost:8001/api/v1/namespaces/default/services/kubia-public/proxy/

kubectl delete po kubia-0


kubectl delete -f svc-public.yaml 
kubectl delete -f svc-headless.yaml 
kubectl delete -f kubia-statefulSet.yaml 