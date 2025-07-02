# Private DNS Zone for AKS Private Cluster API
resource "azurerm_private_dns_zone" "aks_private_dns" {
  name                = "privatelink.westeurope.azmk8s.io"
  resource_group_name = var.resource_group_name
}

# Virtual Network Link to AKS VNet
resource "azurerm_private_dns_zone_virtual_network_link" "aks_dns_link" {
  name                  = "aks-private-dns-link"
  resource_group_name   = var.resource_group_name
  private_dns_zone_name = azurerm_private_dns_zone.aks_private_dns.name
  virtual_network_id    = var.aks_vnet_id
  registration_enabled  = false
}
