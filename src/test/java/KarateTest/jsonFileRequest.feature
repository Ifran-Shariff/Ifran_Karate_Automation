Feature: Test json file

  #Scenario: Read json file method 1 - reads the data from postRequestPayload json file
    Given url 'https://practice.expandtesting.com/notes/api/users/register'
    And def requestPayload = read('../Data/postRequestPayload.json')
    And request requestPayload
    * print requestPayload
    When method post
    Then print response
    Then status 201

  #Scenario: Read json file method 2 - fetch json and update the data, set new field and data
    Given url 'https://practice.expandtesting.com/notes/api/users/register'
    And def requestPayload = read('../Data/postRequestPayload.json')
    And requestPayload.email = 'ifrss@ss.com'
    #setting new field using set keyword
    And set requestPayload.lastname = 'Shariff'
    And request requestPayload
    * print requestPayload
    When method post
    Then print response
    Then status 201

  Scenario: Read json file method 3 - remove the field from requestbody
    Given url 'https://practice.expandtesting.com/notes/api/users/register'
    And def requestPayload = read('../Data/postRequestPayload.json')
    #using remove keyword to remove field
    And remove requestPayload.id
    And request requestPayload
    * print requestPayload
    When method post
    Then print response
    Then status 201