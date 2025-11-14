Feature: Testing callsingle()

  Scenario: Callonce feature used for setup, this will be called in required feature file and it is called in getRequests
      Given url 'http://gorest.co.in/public/v2/comments'
      When method get
      Then status 200