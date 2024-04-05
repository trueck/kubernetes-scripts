docker build -t edwin/batch-job:v1 .
kubectl create -f job.yaml
kubectl get jobs
kubectl get po