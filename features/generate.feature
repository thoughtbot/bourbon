@disable-bundler
Feature: Generate bourbon files via gem subcommand

  Scenario: Run `bourbon generate`
    Given I set up bourbon
    When I generate bourbon files
    Then the sass directories should have been generated
    And the following directories should exist:
      | bourbon           |
      | bourbon/lib       |
    And the master bourbon partial should have been generated
    And the lib files should have been generated
    And the output should contain "Bourbon files generated to bourbon/"

  Scenario: Generator does not overwrite an existing bourbon directory
    Given bourbon is already generated
    When I generate bourbon files
    Then the output should contain "Bourbon files already generated, doing nothing."
