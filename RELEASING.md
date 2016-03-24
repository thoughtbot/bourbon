# Releasing

1. Update the version number in these places:
  - `lib/bourbon/version.rb`
  - `core/_bourbon.scss`
  - `package.json`
  - `bower.json`

1. Update `CHANGELOG.md`. We follow the guidelines from [Keep a CHANGELOG].

1. Commit changes. Use the convention “Bourbon vX.X.X” in your commit message.
   There shouldn’t be code changes, and thus CI doesn’t need to run.

1. Run `bundle exec rake release`, which tags the release, pushes the tag to GitHub, and
   pushes the gem to RubyGems.org.

1. Run `npm publish`, which pushes the new version to npm’s registry (if
   releasing a pre-release, run `npm publish --tag beta`).

1. Draft a [new GitHub release][github-release]. Upon publishing, a tweet will
   _automatically be sent_ on the [@bourbonsass] Twitter account via [Zapier].
   It will look like this:

   > We’ve released {release_title}: {release_link}

1. Re-generate and publish the [documentation website], using the available
   Rake tasks.

[Keep a CHANGELOG]: http://keepachangelog.com
[github-release]: https://github.com/thoughtbot/bourbon/releases/new
[documentation website]: https://github.com/thoughtbot/bourbon.io
[@bourbonsass]: https://twitter.com/bourbonsass
[Zapier]: https://zapier.com
