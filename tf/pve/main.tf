terraform {
  required_providers {
    proxmox = {
      source  = "Telmate/proxmox"
      version = "3.0.1-rc1"
    }
  }
}

provider "proxmox" {
  # Configuration options
}

resource "proxmox_vm_qemu" "resource-name" {
  name        = "VM-name"
  target_node = "pve_node"
  iso         = "ISO file name"

}
