Feature: Meshco Pantry Welcome page
  As a app owner
  I want our users to be greeted when they visit my site
  So that they have a better experience

  Scenario: User sees the welcome message
    Given I go to the homepage
    Then I should see the welcome message

  Scenario: User enter the about me page
    Given I go to the homepage
    When I should see About me link
    And I click the provided link
    Then I should see About Me page
