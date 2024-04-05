docker build -t edwin/fortune:v3 .

kubectl create -f fortune-pod.yaml

kubectl logs -f fortune-env

kubectl delete -f fortune-pod.yaml