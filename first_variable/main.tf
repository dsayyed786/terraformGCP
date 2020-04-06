
resource "google_compute_instance" "default" {
  count = "${length(var.name_count)}"
  name  = "list-${count.index + 1}"
  #name         = "test"
  machine_type = var.machine_type
  zone         = "us-west1-b"

  boot_disk {
    initialize_params {
      image = var.image
    }
  }

  network_interface {
    network = "default"
  }


}

#output "machine_type" { value = "${google_compute_instance.default.machine_type}" }
output "machine_type" { value = "${google_compute_instance.default.*.machine_type}" }

#output "name" { value = "${google_compute_instance.default.name}" }

output "name" { value = "${google_compute_instance.default.*.name}" }


#output "zone" { value = "${google_compute_instance.default.zone}" }
output "zone" { value = "${google_compute_instance.default.*.zone}" }





