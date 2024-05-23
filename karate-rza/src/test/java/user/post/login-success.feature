Feature: Metodo login

  Background:
    * url 'https://api.demoblaze.com'

  Scenario: Login en la pagina web
    Given path 'login'
    And request { "username": "roddyzr", "password": "1234567890" }
    When method post
    Then status 200