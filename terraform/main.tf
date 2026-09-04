data "google_project" "project" {
  project_id = var.project_id
}

#---------------------------
# Disk
#---------------------------
resource "google_compute_disk" "data_disk" {
  name  = "xroad-data-disk" # Specify a name for the disk
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
    device_name = google_compute_disk.data_disk.name
  }

  network_interface {
    network = google_compute_network.network.self_link

    access_config{
      nat_ip = google_compute_address.static_ip.address
    }    
  }

  metadata = {
    ssh-key = "your-username:${file("~/.ssh/ssh-key.pub")}" #Replace
 }
     
  metadata_startup_script = file("./install-docker.sh")

}
