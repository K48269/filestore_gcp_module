variable "name" {
  description = "The name of the Filestore instance"
  type        = string
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
