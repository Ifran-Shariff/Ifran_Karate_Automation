Feature: Testing parameters

  Scenario: Testing QueryParameters part1
  Given url baseURL+'/public/v2/users'
    And param gender = 'male'
    And param status = 'active'
    When method get
    Then status 200
    Then print response

    Scenario: Testing multiple query parameters in same line
    Given url baseURL+'/public/v2/users'
      * def params = {'gender': 'male' , 'status': 'active'}
      When method get
      Then status 200
      Then print response