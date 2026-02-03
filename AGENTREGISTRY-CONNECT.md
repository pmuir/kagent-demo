1. Create an agent
```bash
arctl agent init adk python demoagent --telemetry https://telemetry.agentregistry.a.solo-agentic-demo.com/v1/traces
cd demoagent
```

2. Run agent locally
```bash
arctl agent run .
```

3. Create MCP server (not tested)
```bash
arctl mcp init python my-mcp-server
```

4. Build and push MCP server (not tested)
```bash
arctl mcp publish . --docker-url docker.io/pmuir --github https://github.com/pmuir/my-mcp-server --push --platform linux/amd64,linux/arm64
```

5. Add MCP server to agent (not tested)
```bash
arctl agent add-mcp echo-mcp-server --registry-url https://api.agentregistry.a.solo-agentic-demo.com/ --registry-server-name pmuir/my-mcp-server --registry-server-version 0.1.0 --env MCP_TRANSPORT_MODE=http --env HOST=0.0.0.0 
```

7. Build & push agent to docker registry
```bash
arctl agent build . --image docker.io/pmuir/demoagent:1 --platform linux/amd64,linux/arm64 --push
```
8. Update the agent.yaml with the public image name `docker.io/pmuir/demoagent:1` (?)

9. Push the agent to git
```bash
git remote add -f origin git@github.com:pmuir/demoagent.git
git add *
git commit -m "initial commit"
git push origin HEAD
```

1. Catalog -> Create Agent
2. Fill in all fields (lowercase)
3. Deploy
These env vars:
GOOGLE_API_KEY=AIzaSyC2pWdNyIAaVLoJLpAvlKwkMU4_9uwOTQc
OTEL_EXPORTER_OTLP_TRACES_ENDPOINT=http://34.21.113.231:4318/v1/traces

Paste them into the box
