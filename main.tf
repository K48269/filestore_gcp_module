module "filestore_instance" {
  source   = "./filestore"
  name     = var.name
  location = var.location
  tier     = var.tier
  file_shares = var.file_shares
  networks    = var.networks
}


variable "name" {
   description = "This is a variable of type list"
 type        = string
 #default     = ["string1", "string2", "string3"]
}

variable "location" {
  description = "The location of the Filestore instance"
  type        = string
}

variable "tier" {
  description = "The tier of the Filestore instance"
  type        = string
}

variable "file_shares" {
  description = "Configuration for file shares"
  type = map(object({
    name        = string
    capacity_gb = number
  }))
}

variable "networks" {
  description = "Configuration for networks"
  type = map(object({
    network = string
    modes   = list(string)
  }))
}

output "filestore_instance_id" {
  value = module.filestore_instance.instance_id
}

output "filestore_instance_network" {
  value = module.filestore_instance.instance_creation
}