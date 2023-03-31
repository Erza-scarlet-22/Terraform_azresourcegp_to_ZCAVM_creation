#Create Managed Identity for ZCA VM
resource "azurerm_user_assigned_identity" "identity"{
  resource_group_name = azurerm_resource_group.rg.name
  location = azurerm_resource_group.rg.location
  name = "zerto-zca-managed-identity"
}

#Gather Subscription ID
data "azurerm_subscription" "primary" {
  depends_on = [azurerm_user_assigned_identity.identity]
  #subscription_id = "enterid"
}
#Attach Contributor Role to Managed Identity 
resource "azurerm_role_assignment" "contributor-role" {
  scope                = data.azurerm_subscription.primary.id
  role_definition_name = "Contributor"
  principal_id         = azurerm_user_assigned_identity.identity.principal_id
}

#Attach Storage Blob Contributor Role to Managed Identity
resource "azurerm_role_assignment" "data-role" {
  scope                = data.azurerm_subscription.primary.id
  role_definition_name = "Storage Blob Data Contributor"
  principal_id         = azurerm_user_assigned_identity.identity.principal_id
}

#Attach Storage Queue Data Contributor Role to Managed Identity
resource "azurerm_role_assignment" "queue-role" {
  scope                = data.azurerm_subscription.primary.id
  role_definition_name = "Storage Queue Data Contributor"
  principal_id         = azurerm_user_assigned_identity.identity.principal_id
}
