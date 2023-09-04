terraform {
  required_version = "{{ cookiecutter.terraform_required_version }}"
  required_providers {
  {%- if cookiecutter.terraform_provider != "other" %}
    {%- if cookiecutter.terraform_provider == "aws" %}
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.0"
    }
    {%- elif cookiecutter.terraform_provider == "azurerm" %}
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.0"
    }
    {%- elif cookiecutter.terraform_provider == "google" %}
    google = {
      source  = "hashicorp/google"
      version = ">= 4.0"
    }
    {%- endif %}
    {%- endif %}
    random = {
      source  = "hashicorp/random"
      version = "3.5.1"
    }
  }
}
