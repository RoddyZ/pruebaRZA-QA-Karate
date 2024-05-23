Feature: Metodo post signup

  Background:
    * url 'https://api.demoblaze.com'

  Scenario: Nuevo usuario
    Given path 'signup'
    And request { "username": "roddyzr5", "password": "1234567890" }
    When method post
    Then status 200