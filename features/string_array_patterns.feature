Feature: Tests to explain various Rspec pattern matchers
  Scenario: Create pattern matchers for strings and arrays
    Given I verify the pattern matcher equal to
    Then  I verify the pattern matcher include
    Then  I verify the pattern matcher equal to for an array
    Then  I verify the pattern matcher include for an array
    And   I verify the pattern matcher not to inlcude a particular value
    And   I verify the pattern matcher not to inlcude a particular value in an array

  Scenario: Verify boolean rspec matchers
    Given I verify if false not to be true
    And   I verify if true to be true

  Scenario: Verify pattern matcher for strings
    Given I verify pattern matching for string
    Then  I verify pattern not to match the string
    And   I verify end of string to contain the given values


