#-----------------------
# provider variables
#-----------------------
variable "project_id" {
  description = "GCP project ID"
  type        = string
}

#-------------------------
# VPC variables
#-------------------------

variable "region" {
  description = "Region to deploy GCP resources: default us-central1"
  type        = string
  default     = "us-central1"
}

#-------------------------
# Compute Engine variables
#-------------------------

variable "instance_name" {
  description = "Instance name"
  type = string
}

variable "machine_type" {
  description = "Machine configurarion: default e2-standard-4 with 4 vCPU (2 core), 16 GB Memory. "
  type        = string
  default     = "e2-standard-4"
}

variable "instance_zone" {
  description = "the Zone where VM resources will be created: default us-central1-a"
  type = string
  default = "us-central1-a"
}

variable "os_image" {
  description = "Operating System (OS) default: ubuntu 22.04 LTS image"
  type = string
  default = "ubuntu-os-cloud/ubuntu-2204-lts"
}
