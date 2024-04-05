docker build -t edwin/ssd-monitor:v1 .
kubectl create -f daemonSet.yaml 
kubectl get nodes -L disk
kubectl label node minikube disk=ssd
kubectl get po
kubectl get ds
kubectl logs -f ssd-monitor-qpnv5
kubectl label node minikube disk=hdd --overwrite

kubectl delete  ds ssd-monitor