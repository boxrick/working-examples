# Terraform Workspaces - Variables per workspace

> A working example of using different variables with Terraform workspaces
---

## Workspace Usage

```shell
# Simple examples of workspace commands

# Create dev workspace
$ terraform workspace new dev

# Create prod workspace
$ terraform workspace new prod

# List all workspaces
$ terraform workspace list

# Select prod workspace
$ terraform workspace select prod
```

---
## Example output
> Run terraform and show outputs

```shell
$ terraform apply -auto-approve

null_resource.test: Creating...
null_resource.test: Provisioning with 'local-exec'...
null_resource.test (local-exec): Executing: ["/bin/sh" "-c" "echo hello"]
null_resource.test (local-exec): hello
null_resource.test: Creation complete after 0s (ID: 123456789)

Apply complete! Resources: 1 added, 0 changed, 0 destroyed.

Outputs:

environment = prod
example_var_1 = I am production variable
workspace = prod
```
