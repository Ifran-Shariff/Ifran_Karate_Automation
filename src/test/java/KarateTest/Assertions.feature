Feature: Check assetions

  Background:
    * def expectedoutput = read('../Data/resultofAssertionfeature.json')

#  Scenario: Validate using match ==
#  Given url 'http://reqres.in/api/users'
#    And param page = 2
#    When method get
#    Then status 200
#    And match response == expectedoutput
#
#    * def var1 = {field1:'value1', field2:'value2'}
#    * def var2 = {field2:'value2', field1:'value1'}
#    # match will once compare the value and it will ignore the order
#    * match var1 == var2
#    Then print "matched"

#  Scenario: Validate using match!=
#    * def var1 = {field1:'value1'}
#    * def var2 = {field2:'value2', field1:'value1'}
#    # match will once compare the value and it will ignore the order
#    * match var1 != var2
#    Then print "not matched"

  Scenario Outline: validating the response with the example output given
    Given url 'http://gorest.co.in/public/v2/users'
       And param id = <id>
       When method get
       Then status 200
        * match response[0].id == <id>
        * match response[0].name == "<name>"
        * match response[0].email == "<email>"
        * match response[0].gender == "<gender>"
        * match response[0].status == "<status>"

    Examples:
    |id     |name           |email                        |gender|status|
    |8229425|Chandrani Ahuja|chandrani_ahuja@gorczany.test|female|active|

  #Scenario: Validating schema or datatype of the fields
#    Given url 'http://gorest.co.in/public/v2/users'
#    And param id = 8229426
#    When method get
#    Then status 200
#    * print response
#    * print response.schema
#    * match response[0] == {id:'#number', name:'#string', email:"#string", gender:"#string", status:'#string'}
#    * print "schema validation passed"

#  Scenario: Validating headers
#    Given url 'http://gorest.co.in/public/v2/users'
#    And param id = 8229426
#    When method get
#    Then status 200
#    * print response
#    * print responseHeaders
#    * match responseHeaders['Content-Type'][0] == 'application/json; charset=utf-8'
#    * match responseHeaders contains {'Date': '#ignore', 'Transfer-Encoding':['chunked']}
#    * match responseStatus == 200
#    #response time validation, validating if the response time is less than 1000 milliseconds
#    * assert responseTime < 10000
#    * print response[0].email
#    #regex validating
#    * match response[0].email == '#regex ^[\\w.%+-]+@[\\w.-]+\\.[a-zA-Z]{2,}$'
#    * print "response headers validated"