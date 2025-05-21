include {
  path = find_in_parent_folders("terragrunt.hcl")
}


dependencies {
  paths = ["../ingress-nginx"]
}

locals {
  vars = read_terragrunt_config(format("%s/%s", get_repo_root(), "dev/dev_vars.hcl"))
}


terraform {
  source = "https://github.com/yazhivotnoe/tf-mod-kube-prometheus.git?ref=main"
}

inputs = {
  config_context  = local.vars.locals.config_context
  ingress_enable = local.vars.locals.dev_prometheus_ingress_enable
  persistent_volume_enable = local.vars.locals.dev_prometheus_persistent_volume_enable
  manualy_point_cluster_ip = local.vars.locals.dev_prometheus_manualy_point_cluster_ip
  cluster_ip = local.vars.locals.dev_prometheus_cluster_ip
  alertmanager_enable = local.vars.locals.dev_prometheus_alertmanager_enable
}

