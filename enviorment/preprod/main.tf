module "resource_group" {
  source = "../../module/azurerm_resource_group"

  rg_name = var.rg_name

}

module "azurerm_network" {

  source = "../../module/azurerm_virtual_netwok"

  vnets = var.vnets

  depends_on = [module.resource_group]

}

module "subnet" {

  source = "../../module/azurerm_subnet"

  sbnt = var.sbnt

  depends_on = [module.azurerm_network]

}

module "public_ip" {

    pip = var.pip

  source = "../../module/azurerm_public_ip"



  depends_on = [module.resource_group]
}

module "virtual_machine" {

  source = "../../module/azurerm_virtual_machine"

  vms        = var.vms
  depends_on = [module.subnet, module.public_ip]

}

module "azurerm_nsg" {

  source = "../../module/azurerm_nsg"

  nsgdetails = var.nsgdetails

  depends_on = [module.resource_group]
}

module "nsg_association" {

  source = "../../module/azurerm_nsg_association"

  association = var.association

  depends_on = [module.virtual_machine,module.azurerm_nsg]

}