data "google_project" "project" {
  project_id = var.project_id
}

#---------------------------
# VPC NETWORKS
#---------------------------

# Use a data source to fetch information about the existing network
data "google_compute_network" "existing_network" {
  name = "default" 
}

# Use a data source to fetch information about the existing default subnet
data "google_compute_subnetwork" "default_subnet" {
  name    = "default"
  region  = var.region 
  project = var.project_id
}

# Define a firewall rule for xroad
resource "google_compute_firewall" "rules" {
  name    = "allow-xroad"
  network = data.google_compute_network.existing_network.self_link

  allow {
    protocol = "tcp"
    ports    = ["5500, 5577, 443, 4000"]
  }

  source_ranges = ["0.0.0.0/0"] # Allow access from anywhere (adjust for production)
}

resource "google_compute_address" "static_ip" {
  name   = "xroad-static-ip"
  region = var.region 
}

#---------------------------
# Disk
#---------------------------
resource "google_compute_disk" "data_disk" {
  name  = "xroad-data-disk"
  type  = "pd-standard"  # Specify the disk type (pd-ssd or pd-standard)
  size  = 100            # Specify the size of the data disk in GB
  zone  = var.instance_zone 
}


#---------------------------
# COMPUTE ENGINE
#---------------------------
resource "google_compute_instance" "xroad" {
  name         = var.instance_name
  machine_type = var.machine_type
  zone         = var.instance_zone
  allow_stopping_for_update = true

  boot_disk {
    initialize_params {
      image = var.os_image
    }
  }

  # Attach the persistent data disk to the instance
  attached_disk {
    source = google_compute_disk.data_disk.self_link
    device_name = "xroad-data-disk"  # Specify a device name for the disk
  }

  network_interface {
    network = data.google_compute_network.existing_network.self_link
    subnetwork = data.google_compute_subnetwork.default_subnet.self_link

    access_config{
      nat_ip = google_compute_address.static_ip.address
    }    
  }

  metadata = {
    ssh-key = "your-username:${file("~/.ssh/ssh-key.pub")}" #Replace
  }
}
