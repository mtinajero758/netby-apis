@test
Feature: Evaluación Técnica QA - ReqRes API Authentication & Users

  Background:
    * url baseUrl

  # Escenario 1: GET User (Happy Path)
  Scenario: Obtener detalle de un usuario existente por ID
    Given path 'users', '2'
    When method get
    # Si el servidor sigue pidiendo API Key real, este fallará con 401.
    # En una prueba real, aquí usaríamos la API Key válida configurada.
    Then status 200
    And match response.data.id == 2
    And match response.data.email == 'janet.weaver@reqres.in'
    And match response.data.first_name == 'Janet'

  # Escenario 2: POST Login (Negative Path)
  Scenario: Error al intentar login sin contraseña
    Given path 'login'
    And request { "email": "eve.holt@reqres.in" }
    When method post
    Then status 400
    And match response.error == "Missing password"

  # Escenario 3: POST Login (Happy Path)
  Scenario: Login exitoso y obtención de token
    Given path 'login'
    And request { "email": "eve.holt@reqres.in", "password": "cityslicka" }
    When method post
    Then status 200
    And match response.token == "#notnull"
    And match response.token == "#string"