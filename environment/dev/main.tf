module "resource_group" {
  source = "../../module/rg_group"
  rgs    = var.rg
}

# module "stg_account" {
#   source       = "../../module/stg_account"
#   stg_accounts = var.stg_account

# }
module "vnets" {
  source = "../../module/vnet"
  vnets  = var.vnet
}
module "nic" {
  source = "../../module/nic"
  # nic    = var.nic
}
module "public_ip" {
  source    = "../../module/public_ip"
  public_ip = var.public_ip
}
module "linux_vm" {
  source = "../../module/linux_vm"

  vms = var.vms
}