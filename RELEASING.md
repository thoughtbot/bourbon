# Releasing

1. Update the version number in these places:

    - `lib/bourbon/version.rb`
    - `core/_bourbon.scss`
    - `package.json`

1. Update `CHANGELOG.md`. We follow the guidelines from
   [Keep a Changelog][keep-a-changelog].

1. Commit changes. Use the convention “Bourbon vX.X.X” in your commit message.
   There shouldn’t be code changes, and thus CI doesn’t need to run.

1. Run `bundle exec rake release`, which tags the release, pushes the tag to
   GitHub, and pushes the gem to RubyGems.org.

1. Run `npm publish`, which pushes the new version to npm’s registry (if
   releasing a pre-release, run `npm publish --tag beta`).

1. Draft a [new GitHub release][github-release].

1. Tweet about the release from the [@bourbonsass] Twitter account, e.g.

    > We’ve released Bourbon {release_title}: {release_link}

1. Re-generate and publish the [documentation website][website].

[keep-a-changelog]: https://keepachangelog.com/en/1.0.0/
[github-release]: https://github.com/thoughtbot/bourbon/releases/new
[@bourbonsass]: https://twitter.com/bourbonsass
[website]: https://github.com/thoughtbot/bourbon.io
