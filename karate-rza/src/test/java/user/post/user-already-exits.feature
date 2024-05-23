Feature: Metodo post signup

  Background:
    * url 'https://api.demoblaze.com'

  Scenario: Este usuario ya existe
    Given path 'signup'
    And request { "username": "roddyzr2", "password": "1234567890" }
    When method post
    Then status 200
    And match response == { "errorMessage": "This user already exist." }