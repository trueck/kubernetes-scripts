docker build -t edwin/fortune:v2 .

kubectl create -f fortune-pod.yaml

kubectl logs -f fortune2s

kubectl delete -f fortune-pod.yaml