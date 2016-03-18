# Contributing

By participating in this project, you agree to abide by the thoughtbot
[code of conduct](https://thoughtbot.com/open-source-code-of-conduct).

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
