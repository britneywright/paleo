Feature: Searching for items

  It's lunchtime, I feel the hugahz!
  I need to know if the food is Paleo, because that's my diet.
  Sometimes I'm spot-on with my typing, but this phone is small,
  my fingers slip, so on and so forth.

  Background:
    Given there is a Food
    And I am on "/"

  Scenario: Exact search for a non-paleo item 
    Given I fill in "search" with "Hamburgers"
    When I select "Hamburgers"    
    Then page should have "false" gif

  Scenario: Exact search for a paleo item 
    Given I fill in "search" with "banana"
    When I select "banana"    
    Then page should have "true" gif    