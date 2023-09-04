terraform {
  required_version = "{{ cookiecutter.terraform_required_version }}"
  {%- if cookiecutter.terraform_provider != "other" %}
  required_providers {
    {%- if cookiecutter.terraform_provider == "aws" %}
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.0.0"
    }
    {%- elif cookiecutter.terraform_provider == "azurerm" %}
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.0.0"
    }
    {%- elif cookiecutter.terraform_provider == "google" %}
    google = {
      source  = "hashicorp/google"
      version = ">= 4.0.0"
    }
    {%- endif %}
  }
  {%- endif %}
}
