line=$(kubectl get pods | grep -E '^jaseci-\w{10}-\w{5}')
status=$(echo "$line" | tr -s ' ' | cut -d ' ' -f 3)
echo $status
pod_name=$(echo "$line" | tr -s ' ' | cut -d ' ' -f 1)

while [ $status=="Running" ]
do
    #pod_name=$(kubectl get pods | grep -Eo '^jaseci-\w{10}-\w{5}')
    bytes=$(kubectl exec $pod_name -- cat /sys/fs/cgroup/memory/memory.max_usage_in_bytes)
    echo $(($bytes/1000000)), $status

    line=$(kubectl get pods | grep -E '^jaseci-\w{10}-\w{5}')
    status=$(echo "$line" | tr -s ' ' | cut -d ' ' -f 3)
    pod_name=$(echo "$line" | tr -s ' ' | cut -d ' ' -f 1)
done
