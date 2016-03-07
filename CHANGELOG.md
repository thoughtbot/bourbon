# Change Log

All notable changes to this project will be documented in this file. This
project adheres to [Semantic Versioning](http://semver.org).

## [Unreleased]

[Unreleased]: https://github.com/thoughtbot/bourbon/compare/v5.0.0.beta.3...HEAD

## [5.0.0-beta.3] - 2016-03-04

### Fixed

- Added `pathname` requirement to fix install issues.

[5.0.0-beta.3]: https://github.com/thoughtbot/bourbon/compare/v5.0.0.beta.2...v5.0.0.beta.3

## [5.0.0-beta.2] - 2016-03-03

### Added

- Added global settings for the `contrast-switch` mixin:
  `contrast-switch-dark-color` & `contrast-switch-light-color`.
- Added the `triangle` mixin back, but note that it’s been refactored and the
  arguments have changed.

### Changed

- Switched argument names in `contrast-switch`; `$dark-color` is now
  `$light-color` and `$light-color` is now `$dark-color`.
- The `is-light` function is now private.

### Removed

- Dropped support for Ruby on Rails versions older than 4.2.
- Dropped support for LibSass versions older than 3.3.

[5.0.0-beta.2]: https://github.com/thoughtbot/bourbon/compare/v5.0.0.beta.1...v5.0.0.beta.2

## [5.0.0-beta.1] - 2016-02-09

### Added

- Added a `contrast-switch` mixin that switches between two colors based on the
  lightness of a another color. Great for building button styles.
- Added an `$all-text-inputs-invalid` variable to target the `:invalid`
  pseudo-class on all text-based inputs.
- The `ellipsis` mixin now takes a `$display` argument.
- Added a font stack for system fonts: `$font-stack-system`.
- Added a `hide-visually` mixin that hides an element visually while still
  allowing the content to be accessible to assistive technology,
  e.g. screen readers.
- The `font-face` mixin now allows additional CSS properties to be included in
  its block, which will output as part of the `@font-face` declaration.
  See [2356719].

### Changed

- The global default for the `modular-scale` ratio is now set to
  `$major-third` (`1.25`), instead of `$perfect-fourth` (`1.333`).
- All font stack variables are now prefixed with `$font-stack-`,
  e.g. `$font-stack-helvetica`.
- Global settings are now set via a `$bourbon` map, instead of variables.
  See [4e43c2d].
- The `clearfix` mixin now uses `block` display, instead of `table`.

### Removed

- The `$weight` and `$style` arguments in the `font-face` mixin have been
  removed. Instead, you can now include these—along with other CSS
  properties—within the mixin block and they’ll be output as part of the
  `@font-face` declaration.

[5.0.0-beta.1]: https://github.com/thoughtbot/bourbon/compare/da4451e...v5.0.0.beta.1
[2356719]: https://github.com/thoughtbot/bourbon/commit/235671948ef3a9c343c4391d250082a0373c8d83
[4e43c2d]: https://github.com/thoughtbot/bourbon/commit/4e43c2d7507999b539771bdc1b3733b18b3c1883

## [5.0.0.alpha.0] - 2015-08-21

### Added

- Added a `$global-font-file-formats` setting to globally set the file formats
  for the `font-face` mixin. The default is `("ttf", "woff2", "woff")`.

### Changed

- Removed the type selectors in `$all-text-inputs` and `$all-buttons` to
  reduce specificity.
- Font stacks have been modernized.
- The `strip-units` function is now `strip-unit`.
- The `size` mixin now requires a comma-separated argument list,
  e.g. `@include size(1em, 2em);`.

### Removed

- All vendor prefixing mixins have been removed. We recommend using a more
  robust and maintainable solution
  like [Autoprefixer](https://github.com/postcss/autoprefixer).
- The `$global-prefixes` setting has been removed and the `prefixer` mixin
  has been refactored and no longer uses it.
- The `em` and `rem` mixins have been removed.
- The `$monospace` font stack variable has been removed in favor of new
  `$consolas`, `$courier-new` and `$monaco` variables.
- The `triangle` mixin has been removed.
- The `retina-image` mixin has been removed.

[5.0.0.alpha.0]: https://github.com/thoughtbot/bourbon/compare/v4.2.6...v5.0.0.alpha.0
