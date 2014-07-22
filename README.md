[![Bourbon Sass Mixin Library](http://bourbon.io/images/shared/bourbon-logo.png)](http://bourbon.io)

[![Gem Version](http://img.shields.io/gem/v/bourbon.svg?style=flat)](https://rubygems.org/gems/bourbon)
[![Code Climate](http://img.shields.io/codeclimate/github/thoughtbot/bourbon.svg?style=flat)](https://codeclimate.com/github/thoughtbot/bourbon)
[![Gitter chat](https://img.shields.io/badge/gitter-thoughtbot/bourbon-ae3dd2.svg?style=flat)](https://gitter.im/thoughtbot/bourbon)
[![Stack Overflow](http://img.shields.io/badge/stack%20overflow-bourbon-ae3dd2.svg?style=flat)](http://stackoverflow.com/questions/tagged/bourbon)

***

## A simple and lightweight mixin library for Sass.

Bourbon is a library of pure Sass mixins that are designed to be simple and easy to use. No configuration required. The mixins aim to be as vanilla as possible, meaning they should be as close to the original CSS syntax as possible.

The mixins contain vendor specific prefixes for all CSS3 properties for support amongst modern browsers. The prefixes also ensure graceful degradation for older browsers that support only CSS3 prefixed properties. Bourbon uses SCSS syntax.

### [Documentation & Demo](http://bourbon.io)

## Requirements

- Sass 3.3+

:warning: If you are using **LibSass** or **sass-rails**, or need Sass 3.2 support, use Bourbon **3.2.x**.

## Installation for Rails 3.1+

1. In your Gemfile:

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

4. Delete the sprocket directive in `application.css.scss` ([Why?](https://github.com/thoughtbot/bourbon/wiki/Rails-Sprockets)):

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

- [Rails 3.0.x installation instructions](https://github.com/thoughtbot/bourbon/wiki/Rails-3.0.x-Install)
- [Rails 2.3 installation instructions](https://github.com/thoughtbot/bourbon/wiki/Bourbon-v2.x-or-Rails-2.3-Install)

## Installation for Non-Rails projects

Bourbon includes an easy way to generate a directory with all the necessary files. For command line help, use `bourbon help` or visit the [Command Line Tools Wiki](https://github.com/thoughtbot/bourbon/wiki/Command-Line-Tools).

1. Install (Bourbon 3.0+):

  ```bash
  gem install bourbon
  ```

2. Install Bourbon into the current directory by generating the `bourbon` folder:

  ```bash
  bourbon install
  ```

  The generated folder will contain all the mixins and other necessary Bourbon files. It is recommended not to add or modify the Bourbon files so that you can update Bourbon easily.

  You can specify a target directory using the `path` flag:

  ```bash
  bourbon install --path my/custom/path/
  ```

3. Import Bourbon at the beginning of your stylesheet:

  ```scss
  @import "bourbon/bourbon";
  ```

_Note: Bourbon no longer requires a custom `sass --watch` command for Bourbon v3.0+_

#### Other Commands

```bash
bourbon help
bourbon update
```

#### [Bourbon v2.x install instructions](https://github.com/thoughtbot/bourbon/wiki/Bourbon-v2.x-or-Rails-2.3-Install)

- [Changelog](https://github.com/thoughtbot/bourbon/releases)
- [Browser support](https://github.com/thoughtbot/bourbon/wiki/Browser-Support)

## The Bourbon family

- [Bourbon](http://bourbon.io): A simple and lightweight mixin library for Sass
- [Neat](http://neat.bourbon.io): A lightweight semantic grid framework for Sass and Bourbon
- [Bitters](http://bitters.bourbon.io): Scaffold styles, variables and structure for Bourbon projects
- [Refills](http://refills.bourbon.io): Prepackaged patterns and components, built on top of Bourbon, Bitters & Neat

## Credits

![thoughtbot](http://thoughtbot.com/images/tm/logo.png)

Bourbon is maintained and funded by [thoughtbot, inc](http://thoughtbot.com). Tweet your questions or suggestions to [@phillapier](http://twitter.com/phillapier) or [@thoughtbot](https://twitter.com/thoughtbot).

## License

Bourbon is Copyright © 2014 thoughtbot. It is free software, and may be redistributed under the terms specified in the [LICENSE](LICENSE.md) file.
