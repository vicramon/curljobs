Feature: Candidate singup

  Scenario:
    Given I am a visitor
    And I go to the home page
    And I click on the candidate signup button
    When I fill out the candidate signup form
    And I press "Done"
    Then I should be on the candidate success page
    And that candidate should be in the database
