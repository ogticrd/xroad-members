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
variable "network" {
  description = "Network resource name. Regular expression [a-z]([-a-z0-9]*[a-z0-9])?"
  type        = string
}

variable "region" {
  description = "Region to deploy GCP resources: default South Carolina	us-east1"
  type        = string
  default     = "us-east1"
}

#-------------------------
# Compute Engine variables
#-------------------------

variable "instance_name" {
  description = "VM Instance name. Must consist of lowercase letters (a-z), numbers, and hyphens"
  type = string
}

variable "machine_type" {
  description = "Machine configurarion: default e2-standard-4 with 4 vCPU (2 core), 16 GB Memory. "
  type        = string
  default     = "e2-standard-4"
}

variable "instance_zone" {
  description = "the Zone where VM resources will be created: default us-east1-b"
  type = string
  default = "us-east1-b"
}

variable "os_image" {
  description = "Operating System (OS) default: ubuntu 22.04 LTS image"
  type = string
  default = "ubuntu-os-cloud/ubuntu-2204-lts"
}
