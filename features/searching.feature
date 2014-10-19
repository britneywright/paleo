Feature: Searching for items

  It's lunchtime, I feel the hugahz!
  I need to know if the food is Paleo, because that's my diet.
  Sometimes I'm spot-on with my typing, but this phone is small,
  my fingers slip, so on and so forth.

  Background:
    Given the following foods:
      | name            | paleo | slug            |
      | Hamburgers      | false | hamburgers      |
      | Corn on the cob | true  | corn-on-the-cob |

  Scenario: Exact search for a non-paleo item
    Given I am on "/foods/hamburgers" 
    Given I am on "/" 
    And I fill in "search" with "Hamburgers"
    When I select "Hamburgers"
    Then page should have "not paleo" gif