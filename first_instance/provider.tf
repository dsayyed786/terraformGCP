variable "path" { default = "/Users/dsayyed/Desktop/terraform/credentials" }

provider "google" {
  project     = "apt-canyon-258719"
  region      = "us-west1-b"
  credentials = "${file("${var.path}/secret.json")} "

}
 