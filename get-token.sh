kubectl get -n kube-system secret $(kubectl get -n kube-system sa/admin-user -o jsonpath="{.secrets[0].name}") -o go-template="{{.data.token | base64decode}}" 
