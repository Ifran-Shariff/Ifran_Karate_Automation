Feature: To test the headers

  Scenario: Headers part1
    Given url baseURL+'public/v2/users'
    And header Content-Type = 'application/json'
    And header test = 'test value'
    When method get
    Then status 200
    Then print response

  Scenario: Headers part2- multiple headers in same line
    Given url baseURL+'public/v2/users'
    * configure headers = {'Content-Type':'application/json', 'test':'test-value'}
    When method get
    Then status 200
    Then print response