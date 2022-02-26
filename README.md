# minikube-VPA
Trying to do manually VPA inside of kubernetes pod.

### Complete
##
* Create simple pod with k8s deployment technique
* Create service for this pod and open internal port
* Create bash script for automatically access container interactive terminal
* Ensure that live change of VPA in single pod is not recommended and actually impossible

### Research

***Aliyun (or other cloud services) support modifying limit spec during runtime***  
https://partners-intl.aliyun.com/help/en/doc-detail/197267.htm

***Trying to inject docker update command into container***  
https://docs.docker.com/engine/reference/commandline/update/

***K8s official shows that updating limit of memory when pod is running is not recommended***  
https://github.com/kubernetes/kubernetes/issues/39060

***Recommended solution: k8s auto-scaling-extension***  
https://itnext.io/k8s-vertical-pod-autoscaling-fd9e602cbf81

### TODO
- [ ] Apply auto-VPA in `autoscaling.k8s.io/v1beta2`
- [ ] Try to implement plugin for manually kill and recreate new pod through deployment
