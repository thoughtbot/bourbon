[![Bourbon](http://images.thoughtbot.com/bourbon/bourbon-logo.svg)](http://bourbon.io)

[![GitHub release](https://img.shields.io/github/release/thoughtbot/bourbon.svg)](https://github.com/thoughtbot/bourbon/releases)
[![CircleCI branch](https://img.shields.io/circleci/project/thoughtbot/bourbon/master.svg)](https://circleci.com/gh/thoughtbot/bourbon/tree/master)

## A simple and lightweight mixin library for Sass.

Bourbon is a library of pure Sass mixins that are designed to be simple and easy to use. No configuration required. The mixins aim to be as vanilla as possible, meaning they should be as close to the original CSS syntax as possible.

The mixins contain vendor specific prefixes for all CSS3 properties for support amongst modern browsers. The prefixes also ensure graceful degradation for older browsers that support only CSS3 prefixed properties. Bourbon uses SCSS syntax.

- **[Documentation](http://bourbon.io/docs)**
- **[Changelog](https://github.com/thoughtbot/bourbon/releases)**
- **[Issues & Bugs](https://github.com/thoughtbot/bourbon/issues)**

Follow the [@bourbonsass](https://twitter.com/bourbonsass) Twitter account
for updates.

## Requirements

- [Sass](https://github.com/sass/sass) 3.4+ or [LibSass](https://github.com/sass/libsass) 3.3+

## Installation

For command line help, visit our wiki page on Bourbon’s [command line interface](https://github.com/thoughtbot/bourbon/wiki/Command-Line-Interface).

1. Install the Bourbon gem using the [RubyGems](https://rubygems.org) package manager:

  ```bash
  gem install bourbon
  ```

  Alternatively, you can install Bourbon with [Bower](http://bower.io).

1. Install the Bourbon library into the current directory:

  ```bash
  bourbon install
  ```

  **Pro Tip:** You can target installation into a specific directory using the `path` flag:

  ```bash
  bourbon install --path my/custom/path/
  ```

1. Import Bourbon at the beginning of your stylesheet:

  ```scss
  @import "bourbon/bourbon";
  ```

  It’s not recommended to add or modify the Bourbon files so that you can update them easily.

## Installation for Ruby on Rails 4.2+

1. Add Bourbon to your Gemfile:

  ```ruby
  gem "bourbon"
  ```

1. Then run:

  ```bash
  bundle install
  ```

1. Restart your server and rename `application.css` to `application.scss`:

  ```bash
  mv app/assets/stylesheets/application.css app/assets/stylesheets/application.scss
  ```

1. Delete _all_ Sprockets directives in `application.scss` (`require`, `require_tree` and `require_self`) and use Sass’s native `@import` instead ([why?](http://pivotallabs.com/structure-your-sass-files-with-import)).

1. Import Bourbon at the beginning of `application.scss`. All additional stylesheets should be imported below Bourbon:

  ```scss
  @import "bourbon";
  @import "home";
  @import "users";
  ```

  [Help! I’m getting an undefined mixin error.](https://github.com/thoughtbot/bourbon/wiki/Rails-Help-%5C-Undefined-mixin)

## Installing with npm and using a Node-based asset pipeline

1. Add Bourbon as a dependency:

  ```bash
  npm install --save bourbon
  ```

1. If you’re using [Eyeglass](http://eyeglass.rocks), skip to Step 3. Otherwise, you’ll need to add Bourbon to your node-sass `includePaths` option. `require("bourbon").includePaths` is an array of directories that you should pass to node-sass. How you do this depends on how node-sass is integrated into your project.

1. Import Bourbon into your Sass files:

  ```scss
  @import "bourbon";
  ```

## Installing older versions of Bourbon

1. Uninstall any Bourbon gem versions you already have:

  ```bash
  gem uninstall bourbon
  ```

1. Reinstall the Bourbon gem, using the `-v` flag to specify the version you need:

  ```bash
  gem install bourbon -v 3.2.4
  ```

1. Follow the [instructions above](#installation) to install Bourbon into your project.

## Browser support

- Chrome 26+
- Firefox 29+
- Internet Explorer 9+
- Opera 15+
- Safari 6.1+

## The Bourbon family

- [Bourbon](https://github.com/thoughtbot/bourbon): A simple and lightweight mixin library for Sass
- [Neat](https://github.com/thoughtbot/neat): A lightweight semantic grid framework for Sass and Bourbon
- [Bitters](https://github.com/thoughtbot/bitters): Scaffold styles, variables and structure for Bourbon projects
- [Refills](https://github.com/thoughtbot/refills): Prepackaged patterns and components built with Bourbon, Neat and Bitters

Also check out [Proteus](https://github.com/thoughtbot/proteus), a collection of useful starter kits to help you prototype faster. Each kit comes with Bourbon, Neat and Bitters out-of-the-box.

## Contributing

See the [contributing] document. Thank you, [contributors]!

  [contributing]: CONTRIBUTING.md
  [contributors]: https://github.com/thoughtbot/bourbon/graphs/contributors

## License

Bourbon is copyright © 2011 [thoughtbot, inc.][thoughtbot] It is free software, and may be redistributed under the terms specified in the [license].

  [license]: LICENSE.md

## About

Bourbon is maintained by Tyson Gach and the thoughtbot design team. It is funded by [thoughtbot, inc.][thoughtbot] and the names and logos for thoughtbot are trademarks of thoughtbot, inc.

[<img src="http://presskit.thoughtbot.com/images/signature.svg" width="250" alt="thoughtbot logo">][thoughtbot]

We love open-source software! See [our other projects][community] or [hire us][hire] to design, develop, and grow your product.

  [thoughtbot]: https://thoughtbot.com?utm_source=github
  [community]: https://thoughtbot.com/community?utm_source=github
  [hire]: https://thoughtbot.com/hire-us?utm_source=github
