#! /bin/bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

kubectl delete mcpservers -n default server-everything
kubectl delete agent -n default demoagent
kubectl delete gateway -n default agentgateway
kubectl delete backend -n default mcp-backend
kubectl delete httproute -n default mcp
kubectl delete glootrafficpolicy -n default jwt-policy
kubectl delete trafficpolicy -n default tool-policy
kubectl rollout restart deployment -n default kagent-controller
rm -rf demoagent
