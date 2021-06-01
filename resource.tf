resource "azurerm_express_route_circuit" "express_route" {
  name                  = var.name
  location              = var.location
  resource_group_name   = var.rg_name
  bandwidth_in_mbps     = var.bandwidth
  service_provider_name = var.provider_name
  peering_location      = var.peering_location
  sku {
    family = var.sku.family
    tier   = var.sku.tier
  }
  tags = var.tags
}