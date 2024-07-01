#!/bin/bash

# Configuración de la API
API_CLAVE="c1a435814aca4cf7b7f231956242206"
API_URL="http://api.weatherapi.com/v1/current.json"

# Función para obtener el clima de una ciudad
obtener_clima() {
  local ciudad=$1
  local respuesta=$(curl -s -X GET \
    "${API_URL}?key=${API_CLAVE}&q=${ciudad}")
  local clima=$(echo "$respuesta" | jq -r '.current.condition.text')
  local temperatura=$(echo "$respuesta" | jq -r '.current.temp_c')
  echo "El clima en ${ciudad} es ${clima} con una temperatura de ${temperatura}°C."
}

# Preguntar al usuario por la ciudad
read -p "Ingrese la ciudad para obtener el clima: " ciudad

# Obtener el clima de la ciudad
obtener_clima "$ciudad"
