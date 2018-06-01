Feature: Install bourbon files

  Scenario: Bourbon generates a new bourbon installation
    When I run `bundle exec bourbon install`
    Then the sass directories should have been generated
    And the following directories should exist:
      | bourbon     |
    And the master bourbon partial should have been generated
    And the output should contain "Bourbon files installed to bourbon/"

  Scenario: Generating does not overwrite an existing bourbon directory
    Given bourbon is already installed
    When I run `bundle exec bourbon install`
    Then the output should contain "Bourbon files already installed, doing nothing."

  Scenario: Install Bourbon into a custom path
    When I run `bundle exec bourbon install --path=custom_path`
    Then the sass directories with "custom_path" prefix should have been generated
    And the following directories should exist:
      | custom_path/bourbon     |
    And the master bourbon partial should have been generated within "custom_path" directory
    And the output should contain "Bourbon files installed to custom_path/bourbon/"

  Scenario: Forcing install of bourbon
    Given bourbon is already installed
    When I run `bundle exec bourbon install --force`
    Then the output from "bundle exec bourbon install --force" should contain "Bourbon files installed to bourbon/"
    And the output should not contain "Bourbon files already installed, doing nothing."
