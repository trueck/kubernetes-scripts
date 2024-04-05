docker build -t edwin/kubia:fail .
kubectl create -f pod.yaml 
kubectl exec kubia-liveness -- curl localhost:8080
kubectl delete po kubia-liveness