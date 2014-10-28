Feature: Searching for items

  It's lunchtime, I feel the hugahz!
  I need to know if the food is Paleo, because that's my diet.
  Sometimes I'm spot-on with my typing, but this phone is small,
  my fingers slip, so on and so forth.

  Background:
    Given there is content in the database
    And I am on "/"

  Scenario: Exact search for a non-paleo item 
    When I fill in "search" with "Hamburgers"
    And I select "Hamburgers"    
    Then page should have "false" gif

  Scenario: Exact search for a paleo item
    When I fill in "search" with "banana"
    And I select "banana"   
    Then page should have "true" gif 
    
  Scenario: Case insensitive search
    When I fill in "search" with "hamBurgers"
    And I select "Hamburgers"
    Then page should have "false" gif

  Scenario: Search for an unknown item 
    When I fill in "search" with "Power adapters"
    Then no food is found  

  Scenario: Partial match
    When I fill in "search" with "Burgers"
    And I select "Hamburgers"
    Then page should have "false" gif

  Scenario: Suggest completions as I type
    When I fill in "search" with "ba"
    Then I am suggested "banana" and "bacon"                