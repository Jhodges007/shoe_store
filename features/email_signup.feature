@Story2
Feature: User is able to sign up for email notifications

  Scenario: User is able to submit email address to receive notifications
    When I visit the shoe store home page
    And I input an email address
    Then I should see a success verification


#  OUT OF SCOPE:
#
#  Scenario: User receives error message if empty string is entered
#
#  Scenario: User receives error message if email format is invalid