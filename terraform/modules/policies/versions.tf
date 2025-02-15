terraform {
  required_version = ">= 0.13.4"
  experiments      = [module_variable_optional_attrs]
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.43.0"
    }
  }
}