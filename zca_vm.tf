# Create  Windows VM for ZCA
resource "azurerm_windows_virtual_machine" "sungardvm" {
  name                  = var.zca_vmname
  location              = azurerm_resource_group.rg.location
  resource_group_name   = azurerm_resource_group.rg.name
  network_interface_ids = [azurerm_network_interface.nic.id]
  size               = var.vm_size
  admin_username = var.admin_username
  admin_password = var.admin_password
  os_disk {
    caching           = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }
  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2016-Datacenter"
    version   = "latest"
  }

  
  identity{
    type = "UserAssigned"
  
    identity_ids = [
      azurerm_user_assigned_identity.identity.id,
    ]
  }
}
