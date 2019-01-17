# Terraform Workspaces - Variables per workspace

> A working example of using different variables with Terraform workspaces, please note the default is simply to be inherited from and not directly used!
---

## Workspace Usage

```shell
# Simple examples of workspace commands

# Initialise terraform
$ terraform init

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

## Migration from an existing deploy.

When migrating from an existing deployment make sure to keep the .tfstate file safe.
Then re-create all the current variables and move them into an workspace. Follow the steps from above to create a matching workspace which will create the folder 

```./terraform.tfstate.d/{WORKSPACENAME}```  

Then simply move the backed up .tfstate file into this directory. 
