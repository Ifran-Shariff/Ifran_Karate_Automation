Feature: Testing post call

  #Scenario: Post call method 1
    Given url 'https://practice.expandtesting.com/notes/api/users/register'
    And request {"name":"morpheus","email":"leader155@test.com", "password": "morp@123"}
    And header Content-Type = 'application/json'
    When method post
    Then print response
    Then status 201

  #Scenario: Post call method 2
    Given url 'https://practice.expandtesting.com/notes/api/users/register'
    And request
    """
    {
      "name":"morpheus",
      "email":"leader0342@test.com",
      "password": "morp@123"
    }
    """
    And header Content-Type = 'application/json'
    When method post
    Then print response
    Then status 201

  #Scenario: Post call method 3
    Given url 'https://practice.expandtesting.com/notes/api/users/register'
    * def requestJson = {}
    And requestJson.name = 'iffr'
    And requestJson.email = "leader1290@test.com"
    And requestJson.password = "morp@123"
    And request requestJson
    And header Content-Type = 'application/json'
    When method post
    Then print response
    Then status 201

Scenario: Post call method 4 - just adding array into json and printing
  Given url 'https://practice.expandtesting.com/notes/api/users/register'
  * def requestJson = {}
  And requestJson.name = 'iffr'
  And requestJson.email = "leader1290@test.com"
  And requestJson.password = "morp@123"
  And requestJson.address = []
  And requestJson.address[0] = {}
  And requestJson.address[0].city = 'Mysore'
  And requestJson.address[0].state  = 'Banalore'
  And print requestJson