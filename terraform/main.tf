terraform {
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "~> 3.0"
    }
  }
}

provider "null" {}

resource "null_resource" "simulate_deploy" {
  triggers = {
    timestamp = "${timestamp()}"
  }

  provisioner "local-exec" {
    command = "echo ✅ Simulated deployment completed at ${timestamp()}"
  }
}
