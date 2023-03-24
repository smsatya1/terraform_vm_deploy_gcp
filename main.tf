resource "google_compute_instance" "suse-gcp-vm-tf" {
  name = "suse-gcp-vm-tf"
  machine_type = "f1-micro"
  zone         = "us-central1-a"

  allow_stopping_for_update = true

  network_interface {
    network = "default"

    access_config {}
  }
  boot_disk {
    initialize_params {
      image = "debian-10-buster-v20230306"
      size = 10
    }
    auto_delete = false
  }

  labels = {
    "test" = "susegcpvm"
  }
  
  scheduling {
    preemptible = false
    automatic_restart = false
  }
}
