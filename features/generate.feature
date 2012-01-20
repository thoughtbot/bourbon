Feature: Generate bourbon files via gem subcommand

  @disable-bundler
  Scenario: Run `bourbon generate`
    Given a directory named "test"
    When I cd to "test"
    And I set up bourbon
    And I run `bundle exec bourbon generate`
    Then the following directories should exist:
      | bourbon           |
      | bourbon/lib       |
      | bourbon/addons    |
      | bourbon/css3      |
      | bourbon/functions |
    And a file named "bourbon/_bourbon.scss" should exist
    And a file named "bourbon/lib/sass_extensions.rb" should exist
    And a directory named "bourbon/lib/sass_extensions" should exist
    But a directory named "bourbon/lib/tasks" should not exist
    And the following files should not exist:
      | bourbon/lib/bourbon/engine.rb  |
      | bourbon/lib/bourbon/version.rb |
