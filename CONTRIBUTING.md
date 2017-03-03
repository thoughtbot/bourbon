# Contributing

## Governance

We, the maintainers of Bourbon, would like you to know what to expect when
interacting with this project's repo.

As a *user* of Bourbon, you can expect care to be put into official releases.
The maintainers cannot guarantee that the `master` branch will have the same
API forever.

If you *review pull requests* or *comment on issues*, you are expected to abide
by our [code of conduct].

As a *contributor*, submitting a pull request or opening an issue, you can
expect an initial response from a maintainer within two weeks. The maintainers
cannot guarantee that we will accept all feature requests, and may fix bugs in
ways other than how the contributor suggests. You are expected to abide by our
[code of conduct].

As a *maintainer*, you can merge pull requests (even your own) at any time.
Maintainers are encouraged to request code review from others at thoughtbot or
any relevant peers. You are expected to abide by our [code of conduct].

Only members of thoughtbot may be maintainers.

## Pull Requests

We welcome pull requests from everyone. Here’s a quick guide:

1. [Fork the repository][fork] and clone to your machine.
1. Run `bundle install`.
1. Make sure the tests pass: `bundle exec rake`.
1. Make your change, following our style guide (below). Write tests. Make sure
   the tests pass: `bundle exec rake`.
1. Write a [good commit message][commit]. Push to your fork and
   [submit a pull request][pr]. If [Hound] catches style violations, fix them.
1. Wait for us. We try to at least comment on pull requests within one week. We
   may suggest changes.

[fork]: https://github.com/thoughtbot/bourbon/fork
[commit]: http://tbaggery.com/2008/04/19/a-note-about-git-commit-messages.html
[pr]: https://github.com/thoughtbot/bourbon/compare/
[hound]: https://houndci.com

### Style Guide

Bourbon uses Sass’s SCSS syntax and aligns to
[thoughtbot’s style guides][sass guide]. High-level notes:

- Use two-space indentation (no tabs).
- Use double quotation marks.
- Use hyphens when naming things: `hide-visually` rather than `hide_visually` or
  `hideVisually`.
- Use one space between property and value: `width: 20px` rather than
  `width:20px`.
- Names should be descriptive and aim for clarity over brevity:
  `$all-text-inputs-hover` rather than `$inputshover` or `$alltxthvr`.
- Order CSS declarations alphabetically.
- No trailing whitespace.

[sass guide]: https://github.com/thoughtbot/guides
[SCSS-Lint]: https://github.com/brigade/scss-lint

### Documentation

We use [SassDoc] to document Bourbon. [Annotations] should be ordered:

- `@link`
- `@see`
- `@type`
- `@argument`
- `@content`
- `@property`
- `@return`
- `@example`
- `@require`
- `@access`
- `@since`
- `@author`
- `@deprecated`
- `@todo`

[SassDoc]: http://sassdoc.com
[Annotations]: http://sassdoc.com/annotations
[code of conduct]: https://thoughtbot.com/open-source-code-of-conduct
