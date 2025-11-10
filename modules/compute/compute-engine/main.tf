resource "google_compute_instance" "default" {
    name = "ci_cd"
    machine_type = "e2-micro"
    zone = "us-central1"

    boot_disk {
      initialize_params {
        image = "projects/ubuntu-os-cloud/global/images/ubuntu-2004-focal-v20250111"
      }
    }

    network_interface {
      network = "lab-vpc-network"
      access_config {
        
      }
    }
}
