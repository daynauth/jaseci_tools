 pod_name=$(kubectl get pods | grep -Eo '^jaseci-\w{10}-\w{5}')
 kubectl exec $pod_name -- cat /sys/fs/cgroup/memory/memory.usage_in_bytes 