output "id" {
  value = azurerm_express_route_circuit.express_route.id
}
output "provisioning_state" {
  value = azurerm_express_route_circuit.express_route.service_provider_provisioning_state
}
output "service_key" {
  value = azurerm_express_route_circuit.express_route.service_key
}