include {
  path = find_in_parent_folders("terragrunt.hcl")
}

locals {
  vars = read_terragrunt_config(format("%s/%s", get_repo_root(), "dev/dev_vars.hcl"))
}

terraform {
  source = "https://github.com/yazhivotnoe/tf-mod-kube-cert-manager.git?ref=main"
}


inputs = {
  config_context  = local.vars.locals.config_context
}