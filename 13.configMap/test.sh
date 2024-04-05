kubectl get configmap
kubectl delete configmap nginx-config

kubectl create configmap fortune-config --from-literal=sleep-interval=5
kubectl create configmap nginx-config --from-file=nginx.conf

kubectl create -f fortune-pod-env.yaml 
kubectl logs -f fortune-env-from-configmap
kubectl delete po fortune-env-from-configmap

kubectl create -f fortune-pod-args.yaml 
kubectl logs -f fortune-args-from-configmap
kubectl delete po fortune-args-from-configmap

kubectl create -f nginx-pod.yaml
kubectl exec fortune-configmap-volume -c web-server  -- curl -H "Accept-Encoding: gzip" -I localhost
kubectl edit configmap nginx-config
kubectl exec fortune-configmap-volume -c web-server  -- cat /etc/nginx/conf.d/nginx.conf
kubectl exec fortune-configmap-volume -c web-server  -- nginx -s reload
kubectl exec fortune-configmap-volume -c web-server  -- curl -H "Accept-Encoding: gzip" -I localhost



kubectl delete -f nginx-pod.yaml