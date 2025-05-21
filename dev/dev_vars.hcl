locals {
  config_context = "test.cluster" 

  dev_light_ingress_enable = false
  dev_light_client_id = "kubernetes"
  dev_light_keycloak_realm = "master"
  dev_light_cluster_name = "test.cluster"

  rbacs_dev_cluster_stage = "dev"

  dev_ingress_service_type = "ClusterIP"

  dev_prometheus_cluster_ip = "10.233.41.230"
  dev_prometheus_ingress_enable = false
  dev_prometheus_persistent_volume_enable = false
  dev_prometheus_manualy_point_cluster_ip = true
  dev_prometheus_alertmanager_enable = false

  grafana_dashboard_kube_node_view_url = "https://raw.githubusercontent.com/yazhivotnoe/kube-grafana-dashboard/refs/heads/main/dashboards/kube_nodes.json"
  grafana_dashboard_kube_global_view_url = "https://raw.githubusercontent.com/yazhivotnoe/kube-grafana-dashboard/refs/heads/main/dashboards/kube_global.json"
  grafana_dashboard_kube_namespace_view_url = "https://raw.githubusercontent.com/yazhivotnoe/kube-grafana-dashboard/refs/heads/main/dashboards/kube_namespaces.json"
  grafana_dashboard_kube_system_api_view_url = "https://raw.githubusercontent.com/yazhivotnoe/kube-grafana-dashboard/refs/heads/main/dashboards/kube_system_api_dashboard.json"
}