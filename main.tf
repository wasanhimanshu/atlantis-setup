provider "google" {
version = "3.5.0"
credentials = file("/home/terraform/creds/service-account.json")
project = "ardent-gate-382909"
region = "us-east1"
zone = "us-east1-d"
}

resource "google_compute_instance" "vm_instance" {
name = "terraform-instance2"
machine_type = "f1-micro"
zone = "us-east1-d"
boot_disk {
initialize_params {
image = "centos-cloud/centos-7"
}
}

network_interface {
network = "default"
access_config {
}
}
}