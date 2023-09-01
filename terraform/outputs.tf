output "mongo_static_ip" {
  value = google_compute_address.static_ip.address
}
