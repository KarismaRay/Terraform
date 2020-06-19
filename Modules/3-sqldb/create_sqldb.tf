data "azurerm_sql_server" "sqldemo" {
  name                         = "terraformsql01"
  resource_group_name          = "SQL"
}

resource "azurerm_sql_database" "deploy_db" {
  name                = var.db_name
  resource_group_name = var.rg_name
  location            = var.location
  server_name         = data.azurerm_sql_server.sqldemo.name
}