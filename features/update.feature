@disable-bundler
Feature: Update bourbon files

  Scenario: Updating updates an existing bourbon install
    Given bourbon is already installed
    When I write to "bourbon/_bourbon.scss" with:
      """
      foobar
      """
    And I run `bundle exec bourbon update`
    Then the output should contain "Bourbon files updated."
    And the file "bourbon/_bourbon.scss" should not contain "foobar"

  Scenario: Updating with a --path option
    Given I install bourbon to "custom_path"
    When I write to "custom_path/bourbon/_bourbon.scss" with:
      """
      foobar
      """
    And I run `bundle exec bourbon update`
    Then the output should contain "No existing bourbon installation. Doing nothing."

    When I run `bundle exec bourbon update --path custom_path`
    Then the output should contain "Bourbon files updated."
    And the file "custom_path/bourbon/_bourbon.scss" should not contain "foobar"

  Scenario: Updating does not generate a new bourbon install
    And I run `bundle exec bourbon update`
    Then bourbon should not have been generated
    And the output should contain "No existing bourbon installation. Doing nothing."
