output "do_cluster" {
  value = var.cluster_name
}

output "lb_public_ip" {
  value = kubernetes_service.app.spec.0.load_balancer_ip
}