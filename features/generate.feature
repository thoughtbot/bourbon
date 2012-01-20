Feature: Generate bourbon files via gem subcommand

  @disable-bundler
  Scenario: Run `bourbon generate`
    Given I set up bourbon
    When I generate bourbon files
    Then the sass directories should have been generated
    And the following directories should exist:
      | bourbon           |
      | bourbon/lib       |
    And the master bourbon partial should have been generated
    And the lib files should have been generated
