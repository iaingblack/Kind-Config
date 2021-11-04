# Kind-Config
Some files and scripts on setting up KIND clusters.

# Command Cheatsheet

## KIND

### Create Cluster
```kind create cluster --name k8s1```

### Create Cluster from YAML File
```kind create cluster --config=k8s1.yaml```

### Delete Cluster
```kind delete cluster --name=k8s1```

### Cluster IP and Port
```kubectl cluster-info --context kind-k8s1```

### Show Clusters
```kind get clusters```

## KUBECTL

### Show Context
```kubectl config current-context```

### Change Context
```kubectl config use-context kind-k8s1``` 

### Get a Token for admin-user
```kubectl get -n kube-system secret $(kubectl get -n kube-system sa/admin-user -o jsonpath="{.secrets[0].name}") -o go-template="{{.data.token | base64decode}}"```