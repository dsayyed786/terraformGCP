variable "path" { default = "/Users/dsayyed/Desktop/terraform/credentials" }

provider "google" {
  version     = "~> 3.14"
  project     = "apt-canyon-258719"
  region      = "us-west1-b"
  credentials = "${file("${var.path}/secret.json")} "

}
 