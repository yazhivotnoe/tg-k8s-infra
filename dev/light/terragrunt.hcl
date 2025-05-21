include {
  path = find_in_parent_folders("terragrunt.hcl")
}

dependencies {
  paths = ["../rbacs", "../ingress-nginx"]
}

locals {
  vars = read_terragrunt_config(format("%s/%s", get_repo_root(), "dev/dev_vars.hcl"))
  env_vars = read_terragrunt_config(format("%s/%s", get_repo_root(), "env.hcl"))
}

terraform {
    source = "https://github.com/yazhivotnoe/tf-mod-kube-light.git?ref=main"
}


inputs = {
  config_context  = local.vars.locals.config_context
  client_secret = local.env_vars.locals.dev_light_client_secret
  client_id = local.vars.locals.dev_light_client_id
  keycloak_realm = local.vars.locals.dev_light_keycloak_realm
  cluster_name = local.vars.locals.dev_light_cluster_name
  cluster_api_address = local.env_vars.locals.dev_light_cluster_api_address
  ingress_enable = local.vars.locals.dev_light_ingress_enable
  keycloak_host = local.env_vars.locals.dev_light_keycloak_host
}
