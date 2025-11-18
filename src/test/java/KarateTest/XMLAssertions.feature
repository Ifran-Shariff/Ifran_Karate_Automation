Feature: XML assertions

  Scenario: XML assertions 1
  Given url 'https://mocktarget.apigee.net/xml/get'
    When method get
    Then status 200
    And print response
    * def city = karate.get('//root/city')
    * print 'city:', city
    * match response/root/city == 'San Jose'

  Scenario: XML assertions by converting xml to json - i
    Given url 'https://mocktarget.apigee.net/xml/get'
    When method get
    Then status 200
    * def json = response
    * print json
    * match json.root.city == 'San Jose'

  Scenario: Validate city using contains
    Given url 'https://mocktarget.apigee.net/xml/get'
    When method get
    Then status 200
    * def json = response
    # 1) Recommended contains
    * match json contains '<city>San Jose</city>'

    # 2) Using XPath
    * match response /root/city == 'San Jose'

    # 3) JSON contains
    * def json = response
    * match json contains { city: 'San Jose' }