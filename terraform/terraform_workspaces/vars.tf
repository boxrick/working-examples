# Variables

locals {

  env = {
    defaults = {
      environment = "default"
      example_var_1 = "I am default a variable"
    }

    dev = {
      environment = "dev"
      example_var_1 = "I am development variable"
    }

    prod = {
      environment = "prod"
      example_var_1 = "I am production variable"
    }
  }

  workspace = "${merge(local.env["defaults"], local.env[terraform.workspace])}"
}

output "workspace" {
  value = "${terraform.workspace}"
}

output "environment" {
  value = "${local.workspace["environment"]}"
}

output "example_var_1" {
  value = "${local.workspace["example_var_1"]}"
}
