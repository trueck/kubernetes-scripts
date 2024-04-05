openssl genrsa -out https.key 2048
openssl req -new -x509 -key https.key -out https.cert -days 3650 -subj /CN=www.kubia-example.com
kubectl create secret generic fortune-https --from-file=https.key --from-file=https.cert --from-file=foo

kubectl create configmap nginx-tls-config --from-file=nginx.conf


kubectl create -f nginx-pod-https.yaml 
kubectl exec fortune-https -c web-server  -- curl http://localhost
kubectl exec fortune-https -c web-server  -- curl -k  https://localhost


kubectl delete -f nginx-pod-https.yaml 