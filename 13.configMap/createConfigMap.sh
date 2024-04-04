kubectl create configmap fortune-config --from-literal=sleep-interval=5
kubectl create configmap nginx-config --from-file=nginx.conf