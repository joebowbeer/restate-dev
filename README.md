# Restate TypeScript example in a Devcontainer

This is the Restate NodeJS [template](https://github.com/restatedev/examples/tree/main/typescript/templates/node)
running in a Devcontainer using Skaffold.

Instructions:
1. Open the repo in a remote container in vscode or in Codespaces
2. Run `skaffold dev` to deploy the Greeter app to the `kind` cluster
3. Run `kubectl -n restate-test port-forward pod/restate-0 9070:9070`
4. Open Restate UI in browser to verify that the Greeter is registered

The `restate` CLI is also installed. 
Run `k9s` to explore the `kind` cluster.
