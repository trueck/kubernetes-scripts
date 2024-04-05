kubectl get svc
kubectl create -f svc.yaml 
kubectl exec kubia-46s55 -- curl http://10.111.134.192
kubectl delete -f svc.yaml

kubectl create -f svc-session-sticky.yaml
kubectl exec kubia-46s55 -- curl http://10.111.115.85
kubectl delete svc kubia

kubectl create -f svc-nodeport.yaml 
kubectl exec kubia-46s55 -- curl http://10.101.27.38
minikube ssh
curl http://localhost:32591


kubectl create -f ingress.yaml 
minikube ssh
curl -k https://kubia.example.com/kubia
curl -k https://kubia.example.com/foo

kubectl delete -f ingress.yaml 
kubectl delete -f svc-nodeport.yaml 