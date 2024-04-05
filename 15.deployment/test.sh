docker build -t edwin/kubia:v3 .

kubectl create -f svc-nodeport.yaml 

kubectl apply -f kubia-deployment-v1.yaml --record

kubectl rollout status deployment kubia

kubectl rollout history deployment kubia

kubectl get deployment

minikube ssh
curl http://localhost:31942

kubectl apply -f kubia-deployment-v2.yaml --record

kubectl rollout undo deployment kubia

kubectl delete deployment kubia