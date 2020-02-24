Feature: Meshco Pantry Welcome page
  As a app owner
  I want our users to be greeted when they visit my site
  So that they have a better experience

  Scenario: User sees the welcome message
    When I go to the homepage
    Then I should see the welcome message

  Scenario: User enter the about me page
    When I go to the homepage
    And I should see About me link
    When I click the provided link
    Then I should see About Me page
