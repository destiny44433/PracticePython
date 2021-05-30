*** Settings ***
Resource                            ../../Resource/StepDefinitionFile.robot
Library                             DateTime

*** Test Cases ***
#Testing News Section
#    Given I navigate to "https://www.rediff.com"
#    When I click on News Section
#    Then I checked for Live news
#    And I Print all news

Testing Amazon.com
    Given User Navigates to "https://amazon.in"
    And User search for Value
    log to console          Get Current Date            result_format=%Y_%M_%D_%H_%M_%S



