@disable-bundler
Feature: Update bourbon files

  Scenario: Updating updates an existing bourbon install
    When I install bourbon files
    And I write to "bourbon/_bourbon.scss" with:
      """
      foobar
      """
    And I update bourbon files
    Then the output should contain "Bourbon files updated."
    And the file "bourbon/_bourbon.scss" should not contain "foobar"

  Scenario: Updating does not generate a new bourbon install
    When I update bourbon files
    Then bourbon should not have been generated
    And the output should contain "No existing bourbon installation. Doing nothing."
