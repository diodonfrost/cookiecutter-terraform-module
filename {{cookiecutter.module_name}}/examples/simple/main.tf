resource "random_pet" "suffix" {}

module "{{ cookiecutter.module_name }}" {
  source = "../.."
}
