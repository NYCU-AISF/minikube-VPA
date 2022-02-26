#!/bin/bash

POD_NAME=$(kubectl get pod -n database-namespace -l pod=mongodb -o jsonpath="{.items[0].metadata.name}")
kubectl exec -it $POD_NAME -- bin/bash
# do-something inside container
exit