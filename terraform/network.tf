#---------------------------
# VPC NETWORKS
#---------------------------

resource "google_compute_network" "network" {
  name = var.network
  auto_create_subnetworks = true
}

# Define a firewall rule for xroad
resource "google_compute_firewall" "rules" {
  name    = "allow-xroad"
  network = google_compute_network.network.self_link

  allow {
    protocol = "tcp"
    ports    = ["5500", "5577", "443", "4000"]
  }

  source_ranges = ["0.0.0.0/0"] # Allow access from anywhere (adjust for production)
}

resource "google_compute_firewall" "ssh" {
  name    = "allow-ssh"
  network = google_compute_network.network.self_link

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  source_ranges = ["0.0.0.0/0"] # Allow access from anywhere (adjust for production)
}

resource "google_compute_firewall" "allow-outgoing" {
  name    = "allow-outgoing"
  network = google_compute_network.network.self_link

  allow {
    protocol = "all"
  }

  source_ranges = ["0.0.0.0/0"]  
  direction     = "EGRESS"       
}

resource "google_compute_address" "static_ip" {
  name   = "xroad-static-ip"
  region = var.region 
}