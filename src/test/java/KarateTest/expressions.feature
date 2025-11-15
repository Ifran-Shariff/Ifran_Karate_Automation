Feature: Test Expressions

  Scenario: Expresion
  * def custominfo = {'firstname':'abc', 'lastname':'xyz'}
    Given print custominfo
    * def firstname = 'RRR'
    * def lastname = 'zzz'
    * def custominfo = {'firstname': '#(firstname)', 'lastname': '#(lastname)'}
    Then print custominfo
    #concanating
    * def custominfo = {'fullname':'#(firstname+" "+lastname)'}
    Then print custominfo
    * def age = 10
    * def male = true
    # while embedding int and boolean, no need of single quotes
    * def custominfo = {'firstname': '#(firstname)', 'lastname': '#(lastname)', 'fullname': '#(firstname+" "+lastname)', 'age':#(age),'male':#(male)}
    Then print custominfo