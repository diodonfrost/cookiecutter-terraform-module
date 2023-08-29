# {{ cookiecutter.module_name }}

{{ cookiecutter.module_description }}

## Usage

```hcl
module "{{ cookiecutter.module_name }}" {
  source = ""
```

## Examples

## Inputs

## Outputs

## Tests

Some of these tests create real resources. That means they cost money to run, especially if you don't clean up after yourself. Please be considerate of the resources you create and take extra care to clean everything up when you're done!

### End-to-end tests

This module has been packaged with [Terratest](https://github.com/gruntwork-io/terratest) to tests this Terraform module.

Install Terratest with depedencies:

```shell
# Prerequisite: install Go
cd tests/end-to-end/ && go get ./...

# Test simple scenario
go test -timeout 30m -v simple_test.go
```

## Authors

Modules managed by {{ cookiecutter.author }}.

## Licence

{{ cookiecutter.license }}.
