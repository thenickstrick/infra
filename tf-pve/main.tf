terraform {
  required_providers {
    proxmox = {
      source  = "Telmate/proxmox"
      version = "3.0.1-rc1"
    }
  }
}

provider "proxmox" {
  pm_api_url = "https://virt1.thenickstrick.lan:8006/api2/json"

}

resource "proxmox_vm_qemu" "resource-name" {
  name        = "VM-name"
  target_node = "pve_node"
  iso         = "ISO file name"

}
