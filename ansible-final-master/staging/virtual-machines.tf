
module "vmapp1" {
  source                = "./modules/vm"
  vm_name               = "vmapp1"
  location              = azurerm_resource_group.rg.location
  resource_group_name   = azurerm_resource_group.rg.name
  availability_set_id   = azurerm_availability_set.availability_set1.id
  network_interface_ids = [azurerm_network_interface.nic_of_web1.id]
  storage_os_disk_name  = "disk1"
  computer_name         = "app1"
  admin_username        = var.admin_username
  admin_password        = var.admin_password


}

module "vmapp2" {
  source                = "./modules/vm"
  vm_name               = "vmapp2"
  location              = azurerm_resource_group.rg.location
  resource_group_name   = azurerm_resource_group.rg.name
  availability_set_id   = azurerm_availability_set.availability_set1.id
  network_interface_ids = [azurerm_network_interface.nic_of_web2.id]

  storage_os_disk_name = "disk2"
  computer_name        = "app2"
  admin_username       = var.admin_username
  admin_password       = var.admin_password


}










# resource "azurerm_virtual_machine" "vmWeb1" {
#   name                  = var.vm_name
#   location              = var.location
#   resource_group_name   = var.resource_group_name
#    availability_set_id   = var.availability_set_id
#   network_interface_ids = var.network_interface_ids
#   vm_size               = "Standard_B1s"

#   storage_os_disk {
#     name              = var.storage_os_disk_name
#     caching           = "ReadWrite"
#     create_option     = "FromImage"
#     managed_disk_type = "StandardSSD_LRS"

#   }

#   storage_image_reference {
#     publisher = "Canonical"
#     offer     = "UbuntuServer"
#     sku       = "18.04-LTS"
#     version   = "latest"
#   }

#   os_profile {
#     computer_name  = var.computer_name
#     admin_username = var.admin_username
#     admin_password = var.admin_password
#   }

#   os_profile_linux_config {
#     disable_password_authentication = false
#   }
# }