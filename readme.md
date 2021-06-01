
# Modulo - Express Route
[![Avanade](https://img.shields.io/badge/create%20by-Avanade-orange)](https://www.avanade.com/pt-br/about-avanade) [![HCL](https://img.shields.io/badge/language-HCL-blueviolet)](https://www.terraform.io/)
[![Azure](https://img.shields.io/badge/provider-Azure-blue)](https://registry.terraform.io/providers/hashicorp/azurerm/latest)

Modulo desenvolvido para facilitar a criação de Express Route

## Compatibilidade de Versão

| Versão do Modulo | Versão Terraform | Versão AzureRM |
|----------------|-------------------| --------------- |
| >= 1.x.x       | 0.14.x            | >= 2.46         |

## Especificando versão

Para evitar que seu código receba atualizações automáticas do modulo, é preciso informar na chave `source` do bloco do module a versão desejada, utilizando o parametro `?ref=***` no final da url. conforme pode ser visto no exemplo abaixo.

## Exemplo de uso


```hcl
module "circuit-1" {
  source   = "git::https://timbrasil@dev.azure.com/timbrasil/Projeto_IaC/_git/azr-network/modulo-express-route.git?ref=v1.0.0"
  name     = "circuit-1"
  location = "eastus"
  rg_name  = "resource_group_name"
  provider_name    = "Equinix"
  peering_location = "Sao Paulo"
  sku = {
    family = "MeteredData"
    tier   = "Premium"
  }
  tags     = {
    area        = "infraestructure"
  }
}
output "key" {
  value = module.circuit-1.service_key
}
```

## Entrada de Valores

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| name | nome dado ao recurso | `string` | n/a | yes |
| bandwidth | Largura de banda em Mbps do circuito | `number` | 1000 | No |
| provider_name | nome do provider de Express Route | `string` | n/a | yes |
| peering_location | Nome do local de peering e não do recurso do azure | `string` | n/a | yes |
| sku | valores para definir `tier` e `family` | `map(string)` | n/a | yes |
| rg_name | nome do resource group onde o recurso será alocado | `string` | n/a | yes |
| tags | Tags adicionais | `map(string)` | `{}` | No |
| location | Região do Azure | `string` | n/a | yes |


## Saída de Valores

| Name | Description |
|------|-------------|
| id | ID gerada após provisionamento do recurso |
| provisioning_state | exibe o estado de provisionamento do circuito |
| service_key | Key necessária para que o provedor forneça o Express Route |

## Documentação de Referência

Terraform Express Route Circuit: [https://www.terraform.io/providers/azurerm/latest/docs/resources/express_route_circuit](https://www.terraform.io/providers/azurerm/latest/docs/resources/express_route_circuit)
