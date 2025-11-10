#! /bin/bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

kubectl delete mcpservers -n kagent server-everything
kubectl delete agent -n kagent demoagent
kubectl delete gateway -n kagent agentgateway
kubectl delete backend -n kagent mcp-backend
kubectl delete httproute -n kagent mcp
kubectl delete glootrafficpolicy -n kagent jwt-policy
kubectl delete trafficpolicy -n kagent tool-policy
kubectl rollout restart deployment -n kagent kagent-controller
rm -rf demoagent
