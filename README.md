[![Bourbon Sass Mixin Library](http://bourbon.io/images/shared/bourbon-logo.png)](http://bourbon.io)

[![Gem Version](http://img.shields.io/gem/v/bourbon.svg?style=flat)](https://rubygems.org/gems/bourbon)
[![Code Climate](http://img.shields.io/codeclimate/github/thoughtbot/bourbon.svg?style=flat)](https://codeclimate.com/github/thoughtbot/bourbon)
[![Gitter chat](https://img.shields.io/badge/gitter-thoughtbot/bourbon-ae3dd2.svg?style=flat)](https://gitter.im/thoughtbot/bourbon)
[![Stack Overflow](http://img.shields.io/badge/stack%20overflow-bourbon-ae3dd2.svg?style=flat)](http://stackoverflow.com/questions/tagged/bourbon)

***

## A simple and lightweight mixin library for Sass.

Bourbon is a library of pure Sass mixins that are designed to be simple and easy to use. No configuration required. The mixins aim to be as vanilla as possible, meaning they should be as close to the original CSS syntax as possible.

The mixins contain vendor specific prefixes for all CSS3 properties for support amongst modern browsers. The prefixes also ensure graceful degradation for older browsers that support only CSS3 prefixed properties. Bourbon uses SCSS syntax.

#### [Documentation & Demo](http://bourbon.io)

#### [Changelog](https://github.com/thoughtbot/bourbon/releases)

## Requirements

- Sass 3.3+
- :warning: If you are using Bourbon with **LibSass**, **sass-rails**, **Compass**, **Foundation** or need **Sass 3.2 support**, you should [use Bourbon 3.2.x](#installing-older-versions-of-bourbon).

## Installation

Bourbon uses the [RubyGems](https://rubygems.org) package manager to easily generate a `bourbon` directory with all of the necessary files.

For command line help, use `bourbon help` or visit the [Command Line Interface Wiki](https://github.com/thoughtbot/bourbon/wiki/Command-Line-Interface).

1. Install the Bourbon gem:

  ```bash
  gem install bourbon
  ```

2. Install the Bourbon library into the current directory:

  ```bash
  bourbon install
  ```

  **Pro Tip:** You can specify a target directory using the `path` flag:

  ```bash
  bourbon install --path my/custom/path/
  ```

3. Import Bourbon at the beginning of your stylesheet:

  ```scss
  @import "bourbon/bourbon";
  ```

  It’s not recommended to add or modify the Bourbon files so that you can update Bourbon easily.

## Installation for Rails 3.1+

1. Add Bourbon to your Gemfile:

  ```ruby
  gem 'bourbon'
  ```

2. Then run:

  ```bash
  bundle install
  ```

3. Restart your server and rename `application.css` to `application.css.scss`:

  ```bash
  mv app/assets/stylesheets/application.css app/assets/stylesheets/application.css.scss
  ```

4. Delete the sprocket directive in `application.css.scss` ([why?](https://github.com/thoughtbot/bourbon/wiki/Rails-Sprockets)):

  ```scss
  *= require_tree .
  ```

5. Import Bourbon at the beginning of `application.css.scss`. All additional stylesheets should be imported below Bourbon:

  ```scss
  @import "bourbon";
  @import "home";
  @import "users";
  ```

  [Help! I’m getting an undefined mixin error.](https://github.com/thoughtbot/bourbon/wiki/Rails-Help-%5C-Undefined-mixin)

## Installing older versions of Bourbon

1. Uninstall any Bourbon gem versions you already have:

  ```bash
  gem uninstall bourbon
  ```

2. Reinstall the Bourbon gem, using the `-v` flag to specify the version you need:

  ```bash
  gem install bourbon -v 3.2.3
  ```

3. Follow the [instructions above](#installation) to install Bourbon into your project.

## Command line interface

```bash
bourbon help
bourbon install
bourbon update
bourbon version
```

More information can be found in the [wiki](https://github.com/thoughtbot/bourbon/wiki/Command-Line-Interface).

## Browser support

- Chrome 10.0+
- Firefox 3.6+
- Internet Explorer 9+
- Opera 12+
- Safari 5.1+

## The Bourbon family

- [Bourbon](http://bourbon.io): A simple and lightweight mixin library for Sass
- [Neat](http://neat.bourbon.io): A lightweight semantic grid framework for Sass and Bourbon
- [Bitters](http://bitters.bourbon.io): Scaffold styles, variables and structure for Bourbon projects
- [Refills](http://refills.bourbon.io): Prepackaged patterns and components, built on top of Bourbon, Bitters & Neat

## Credits

![thoughtbot](http://thoughtbot.com/images/tm/logo.png)

Bourbon is maintained and funded by [thoughtbot, inc](http://thoughtbot.com). Tweet your questions or suggestions to [@bourbonsass](https://twitter.com/bourbonsass) and while you’re at it follow us too.

## License

Copyright © 2011–2014 [thoughtbot, inc](http://thoughtbot.com). Bourbon is free software, and may be redistributed under the terms specified in the [license](LICENSE.md).
