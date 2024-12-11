    terraform {
      backend "remote" {
        # The name of your Terraform Cloud organization.
        organization = "veloso"

        # The name of the Terraform Cloud workspace to store Terraform state files in.
        # workspaces {
        #   name = "stack-dev"
        # }
      }
    }
terraform {
  cloud {
    organization = "veloso"
    hostname = "app.terraform.io" # Optional; defaults to app.terraform.io

    workspaces {
      project = "Default Project"
    }
  }
}
