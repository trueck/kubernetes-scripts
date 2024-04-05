kubectl get sc
kubectl create -f storageclass.yaml
kubectl create -f mongo-pvc-sc.yaml 
kubectl create -f mongo-pvc-default-sc.yaml
kubectl get pvc