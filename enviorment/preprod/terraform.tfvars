rg_name = {

  rg1 = {

    name     = "tony-rg"
    location = "centralindia"
  }

 rg2 = {

    name     = "my-rg"
    location = "centralindia"
  }

}


vnets = {

  vnet1 = {

    name          = "tony-vnet"
    location      = "centralindia"
    address_space = ["10.0.0.0/16"]

    resource_group_name = "tony-rg"
  }


  vnet2 = {

    name          = "mony-vnet"
    location      = "centralindia"
    address_space = ["10.0.0.0/16"]

    resource_group_name = "tony-rg"
  }
}


sbnt = {

  subnet1 = {


    name                 = "frontend-subnet" 
    virtual_network_name = "tony-vnet"
    resource_group_name  = "tony-rg"
    address_prefixes     = ["10.0.2.0/24"]

  }

  subnet3 = {


    name                 = "backend-subnet"
    resource_group_name  = "tony-rg"
    virtual_network_name = "tony-vnet"
    address_prefixes     = ["10.0.3.0/24"]

  }

}


pip = {

  pip1 = {

    name                = "frontend-pip"
    location            = "centralindia"
    resource_group_name = "tony-rg"
    allocation_method   = "Static"
    sku                 = "Standard"
  }


  pip2 = {

    name                = "backend-pip"
    location            = "centralindia"
    resource_group_name = "tony-rg"
    allocation_method   = "Static"
    sku                 = "Standard"
  }
}


vms = {

  nic1 = {


    nic_name            = "frontend-nic"
    nic_location        = "centralindia"
    resource_group_name = "tony-rg"
    vnet_name           = "tony-vnet"
    subnet_name         = "frontend-subnet"
    pip_name            = "frontend-pip"
    vm_name             = "frontend-vm"
    vm_size             = "Standard_D2s_v3"
    admin_username      = "azureuser"
    admin_password      = "P@ssword12345!"

  }

  nic2 = {


    nic_name            = "backend-nic"
    nic_location        = "centralindia"
    resource_group_name = "tony-rg"
    vnet_name           = "tony-vnet"
    subnet_name         = "backend-subnet"
    pip_name            = "backend-pip"
    vm_size             = "Standard_D2s_v3"
    vm_name             = "backend-vm"

    admin_username = "azureuser"
    admin_password = "P@ssword12345!"

  }

}


nsgdetails = {

  nsg1 = {


    name                = "frontend-nsg"
    location            = "centralindia"
    resource_group_name = "tony-rg"
  }


  nsg2 = {


    name                = "backend-nsg"
    location            = "centralindia"
    resource_group_name = "tony-rg"
  }
}


association = {

  nic1 = {

    nic_name            = "frontend-nic"

    nsg_name            = "frontend-nsg"

    resource_group_name = "tony-rg"

  }

  nic2 = {

    nic_name            = "backend-nic"

    nsg_name            = "backend-nsg"

    resource_group_name = "tony-rg"

  }

}