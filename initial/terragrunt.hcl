include {
  path = find_in_parent_folders()
}

terraform {
  source = "git::ssh://git@github.com:Odernor/hcloud_kubernetes_initial.git"

  extra_arguments "common_vars" {
    commands = get_terraform_commands_that_need_vars()

    arguments = [
      "-var-file=${get_terragrunt_dir()}/../terraform.tfvars"
    ]
  }
}
