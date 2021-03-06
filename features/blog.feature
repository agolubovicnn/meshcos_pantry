Feature: Meshco Pantry Blog page
  As a app owner
  I want our users to be greeted when they visit my site
  So that they have a better experience

Scenario: User login as admin users
  Given admin user is created
  When I go to the homepage
  And I click on login link
  And I am on login page
  And I fill in the "Email" and "Password"
  Then I should see Success

Scenario: User login as regular user
  Given user is created
  When I go to the homepage
  And I click on login link
  And I am on login page
  And I fill regular user "Email" and "Password"
  Then I should see Success

Scenario: Invalid user login
  Given user is created
  When I go to the homepage
  And I click on login link
  And I am on login page
  And I fill in invalid "Email" and "Password"
  Then I should see Fail
