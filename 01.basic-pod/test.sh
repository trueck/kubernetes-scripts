docker build -t edwin/kubia:basic .
kubectl create -f pod.yaml 
kubectl exec kubia-manual -- curl localhost:8080
kubectl delete po kubia-manual