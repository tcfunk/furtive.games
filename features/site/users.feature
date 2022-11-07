@api
Feature: Users

  Scenario: User registration is not allowed.
    Given I am an anonymous user
    Then I am restricted from "/user/register"
