name     = "my-filestore-instance"
location = "us-central1-b"
tier     = "STANDARD"

file_shares = {
  file_shares = {
    name        = "share1"
    capacity_gb = 1024
  }
}

networks = {
  networks = {
    network = "default"
    modes   = ["MODE_IPV4"]
  }
}
