
#!/bin/bash

CPU=$(echo 80)

if (( $(echo "$CPU > 75" | bc -l) )); then
echo "Scaling triggered"

aws autoscaling set-desired-capacity --auto-scaling-group-name demo-autoscale-group --desired-capacity 1

fi
