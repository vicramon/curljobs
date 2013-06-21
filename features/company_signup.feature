Feature: Company signup

  Scenario:
    Given I go to the home page
    And I fill out the company signup form
    When I click submit
    Then I am on the company signup success page

