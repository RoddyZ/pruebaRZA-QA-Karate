Feature: Metodo login

  Background:
    * url 'https://api.demoblaze.com'

  Scenario: Este usuario ya existe
    Given path 'login'
    And request { "username": "roddyzr", "password": "malPassword" }
    When method post
    Then status 200
    And match response == { "errorMessage": "Wrong password." }