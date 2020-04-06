

resource "google_compute_instance" "default" {
  count = "${length(var.name_count)}"
  name         = "test"
  machine_type = "var.machine_type"
  zone         = "us-west1-b"

  boot_disk {
    initialize_params {

      image = "var.image"
    }
  }
  network_interface {
    network = "default"
  }

}