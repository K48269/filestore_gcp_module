resource "google_filestore_instance" "filestore-instance" {
  name     = var.name
  location = var.location
  tier     = var.tier

  dynamic "file_shares" {
    for_each = var.file_shares
    content {
      capacity_gb = file_shares.value.capacity_gb
      name        = file_shares.value.name
    }
  }

  dynamic "networks" {
    for_each = var.networks
    content {
      network = networks.value.network
      modes   = networks.value.modes
    }
  }
}

output "instance_id" {
  value = google_filestore_instance.filestore-instance.id
}
output "instance_creation_time" {
  value = google_filestore_instance.filestore-instance.create_time
}
output "instance_creation" {
  value = google_filestore_instance.filestore-instance.networks[0]
}