Feature: This helps to check the functionality

  Scenario: Get Request
  Given url 'http://gorest.co.in/public/v2/users'
    When method get
    Then status 200
    * def responseBody = response   /*defining a variable and assigning the response to it*/
    Then print responseBody


    Scenario: Get call with base url defined
    Given url baseURL+'public/v2/users'
      When method get
      Then status 200
      * def res = response
      Then print res

  Scenario: Another way to define the API using path
    Given url baseURL
    And path 'public/v2/users'
    When method get
    Then status 200
    * def res = response
    Then print res

    Scenario: passing the id at the end of URL to call specific details
    Given url baseURL+'public/v2/users'
      And path '7583038'
      When method get
      Then status 200
      Then print response