Feature: A homepage for my application
  In order to present the app
  Showing basic features for the guests
  Users must be able to see a topscore

  Scenario: The application has a homepage that can be accessed by guests
    Given I am not logged in
    When I access the homepage
    Then I should see the guest homepage

  Scenario: The application has a topscore homepage that can be seen by users
    Given I am not logged in
    When I access the homepage
    And I log in
    Then I should see the topscore
