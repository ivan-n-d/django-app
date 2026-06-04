output "instances_public_ips" {
  description = "Публичные IP-адреса созданных серверов"
  value = {
    for instance in yandex_compute_instance.nodes :
    instance.name => instance.network_interface.0.nat_ip_address
  }
}