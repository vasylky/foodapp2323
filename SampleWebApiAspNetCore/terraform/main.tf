provider "azurerm" {
  features {}

}


resource "azurerm_resource_group" "main" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_service_plan" "main" {
  name                = "asp-${var.app_name}"
  location            = azurerm_resource_group.main.location
  resource_group_name = azurerm_resource_group.main.name
  os_type             = "Linux"
  sku_name            = "B1"
}

resource "azurerm_linux_web_app" "main" {
  name                = var.app_name
  location            = azurerm_resource_group.main.location
  resource_group_name = azurerm_resource_group.main.name
  service_plan_id     = azurerm_service_plan.main.id

  site_config {
    application_stack {
      docker_image_name = "${var.dockerhub_username}/${var.docker_image}"
    }

    always_on = false
  }


  app_settings = {
    WEBSITES_ENABLE_APP_SERVICE_STORAGE = "false"
    DOCKER_REGISTRY_SERVER_URL          = "https://index.docker.io"
    DOCKER_REGISTRY_SERVER_USERNAME     = var.dockerhub_username
    DOCKER_REGISTRY_SERVER_PASSWORD     = var.dockerhub_password
  }
}
