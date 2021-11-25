# Redis

[https://kubernetes.io/docs/tutorials/configuration/configure-redis-using-configmap/](https://kubernetes.io/docs/tutorials/configuration/configure-redis-using-configmap/)

```
kubectl apply -f example-redis-config.yaml
kubectl apply -f https://raw.githubusercontent.com/kubernetes/website/main/content/en/examples/pods/config/redis-pod.yaml
```

Examinar o redis criado

```
kubectl get pod/redis configmap/example-redis-config 
```

kubectl delete pod redis
kubectl apply -f https://raw.githubusercontent.com/kubernetes/website/main/content/en/examples/pods/config/redis-pod.yaml

kubectl exec -it redis -- redis-cli

CONFIG GET maxmemory

CONFIG GET maxmemory-policy

kubectl delete pod/redis configmap/example-redis-config


----
# MySQL
[https://kubernetes.io/docs/tasks/run-application/run-single-instance-stateful-application/](https://kubernetes.io/docs/tasks/run-application/run-single-instance-stateful-application/)

```
kubectl apply -f https://k8s.io/examples/application/mysql/mysql-pv.yaml
```

```
kubectl apply -f https://k8s.io/examples/application/mysql/mysql-deployment.yaml
```

```
kubectl describe deployment mysql
```

```
kubectl describe pvc mysql-pv-claim
```

## Accessing the MySQL instance

```
kubectl run -it --rm --image=mysql:5.6 --restart=Never mysql-client -- mysql -h mysql -ppassword
```

```
kubectl delete deployment,svc mysql
kubectl delete pvc mysql-pv-claim
kubectl delete pv mysql-pv-volume
```