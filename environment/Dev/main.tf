module "rg" {
  source  = "../../modules/resource"
  rg_name = var.rg_name
}


module "vnet" {
  depends_on = [module.rg]
  source     = "../../modules/vnet"
  vnet_name  = var.vnet_name
}
module "subnet" {
  depends_on  = [module.vnet]
  source      = "../../modules/subnet"
  subnet_name = var.subnet_name

}
module "pip" {
  depends_on = [module.rg]
  source     = "../../modules/public ip"
  pip_name   = var.pip_name
}
module "vm" {
  depends_on = [module.pip, module.subnet]
  source     = "../../modules/vm"
  vms        = var.vms
}





