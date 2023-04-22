Feature: Login Functionalities

  @smoke
  Scenario: Valid Admin login
    #Given open the browser and launch HRMS application
    When user enters valid email and valid password
    And click on login button
    Then user is logged in successfully into the application
    #And Close the browser

  @smoke2
  Scenario: Valid Admin login
    #Given open the browser and launch HRMS application
    When user enters valid "ADMIN" and valid "Hum@nhrm123"
    And click on login button
    Then user is logged in successfully into the application
    #And Close the browser



    #HOOKS: For defining pre and Post steps in any Cucumber framework
    #     : This is always created inside the StepDefinitions folder
    #     : Hooks will take care of pre and post conditions irrespective
    #     : of what goes in between the test steps

      #BACKGROUND: Its the clubbing of common steps in different scenarios of a feature file
   #             till flow is not broken
   #1. Hard Code
   #2. Config file
   #-----------------Cucumber itself provides multiple option through which we can feed data from
   # feature file into Step Definition---------------------------------------------
   #3. Regular Expressions
       # put the data in double quotes [""]
  #4. Scenario Outline
  # Provides you an alternative to Data driven testing
       # Also supports parametrization
  #===================================PARAMETERIZATION================================
  # Executing the same test case with multiple data

  @scenarioOutline
  # parameterization/ Data Driven
  Scenario Outline:
      #Given open the browser and launch HRMS application
    When user enters valid "<username>" and valid "<password>"
    And click on login button
    Then user is logged in successfully into the application
    #And Close the browser
    Examples:
      | username | password    |
      | admin    | Hum@nhrm123 |
      | ADMIN    | Hum@nhrm123 |
      | Jason    | Hum@nhrm123 |


  @dataTable
  Scenario: Login with multiple credential using data table
    When user enters valid username and password and verifies login
      | username | password    |
      | admin    | Hum@nhrm123 |
      | ADMIN    | Hum@nhrm123 |
      | Jason    | Hum@nhrm123 |
