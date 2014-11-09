Feature: Verify rspec matchers
  Scenario: Create scenarios to test rspec
   Given I verify relational operators greater than
   And   I verify relational operators lesser than
   And   I verify predicate methods
   And   I verify if array is empty

  Scenario: Verify advanced rspec methods
    Given I verify array matching an array
    And   I verify values to match exactly
    And   I verify float value is not a zero
    Then  I verify if a value is present in the given range of values
    Then  I verify if a value is not present in the given range of values
    And   I verify if an array to end with the given values

  Scenario: Use rspec to verify hash values
    Given I verify hash to include certain values
    And   I verify hash to contain given keys
    And   I verify not include for the hash values


