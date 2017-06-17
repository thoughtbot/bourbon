[<img src="https://images.thoughtbot.com/bourbon/bourbon-logo.svg" width="200" alt="Bourbon logo">][Bourbon]

## A Lightweight Sass Tool Set

[Bourbon] is a library of [Sass] mixins and functions that are designed to make
you a more efficient style sheet author.

It is…

- Dependency-free: Bourbon is pure Sass.
- Human-readable: We aim for clarity over brevity.
- Lightweight: Zero output post-install and has no visual opinion.

The current stable version is **4.3.4**. The `master` branch on GitHub is
version 5.0.0.beta.7.

  [Bourbon]: http://bourbon.io
  [Sass]: http://sass-lang.com

### Helpful Links

- [Documentation](http://bourbon.io/docs)
- [Change log](CHANGELOG.md)
- [Twitter](https://twitter.com/bourbonsass)
- [Stack Overflow](https://stackoverflow.com/questions/tagged/bourbon)

## Table of Contents

- [Requirements](#requirements)
- [Installation](#installation)
- [Command Line Interface](#command-line-interface)
- [Browser Support](#browser-support)
- [The Bourbon Family](#the-bourbon-family)
- [Contributing](#contributing)
- [License](#license)
- [About](#about)

## Requirements

- [Sass] 3.4+ or [LibSass] 3.3+

  [Sass]: https://github.com/sass/sass
  [LibSass]: https://github.com/sass/libsass

## Installation

1. Install the Bourbon gem using the [RubyGems] package manager:

    ```bash
    gem install bourbon
    ```

    Alternatively, you can install Bourbon with [Bower].

1. Install the Bourbon library into the current directory:

    ```bash
    bourbon install
    ```

    **Pro Tip:** You can target installation into a specific directory using the
    `path` flag:

    ```bash
    bourbon install --path my/custom/path/
    ```

1. Import Bourbon at the beginning of your stylesheet:

    ```scss
    @import "bourbon/bourbon";
    ```

    It’s not recommended that you modify Bourbon’s files directly as it will
    make updating to future versions difficult, by overwriting your custom
    changes or causing merge conflicts.

  [RubyGems]: https://rubygems.org
  [Bower]: http://bower.io

### Installation for Ruby on Rails 4.2+

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

1. Delete _all_ Sprockets directives in `application.scss` (`require`,
   `require_tree` and `require_self`) and use Sass’s native `@import` instead
   ([why?][sass-import]).

1. Import Bourbon at the beginning of `application.scss`. Any project styles
   that utilize Bourbon’s features must be imported after Bourbon.

    ```scss
    @import "bourbon";
    @import "home";
    @import "users";
    ```

  [sass-import]: https://content.pivotal.io/blog/structure-your-sass-files-with-import

### Installing with npm and using a Node-based asset pipeline

1. Add Bourbon as a dependency:

    ```bash
    npm install --save bourbon
    ```

1. If you’re using [eyeglass], skip to Step 3. Otherwise, you’ll need to add
   Bourbon to your node-sass `includePaths` option.
   `require("bourbon").includePaths` is an array of directories that you should
   pass to node-sass. How you do this depends on how node-sass is integrated
   into your project.

1. Import Bourbon into your Sass files:

    ```scss
    @import "bourbon";
    ```

  [eyeglass]: http://eyeglass.rocks

### Installing older versions of Bourbon

1. Uninstall any Bourbon gem versions you already have:

    ```bash
    gem uninstall bourbon
    ```

1. Reinstall the Bourbon gem, using the `-v` flag to specify the version
   you need:

    ```bash
    gem install bourbon -v 4.2.7
    ```

1. Follow the [instructions above](#installation) to install Bourbon into
   your project.

## Command Line Interface

```bash
bourbon [options]
```

### Options

| Option            | Description               |
| :---------------- | :------------------------ |
| `-h`, `--help`    | Show help                 |
| `-v`, `--version` | Show the version number   |
| `--path`          | Specify a custom path     |
| `--force`         | Force install (overwrite) |

### Commands

| Command           | Description                                           |
| :---------------- | :---------------------------------------------------- |
| `bourbon install` | Install Bourbon into the current directory            |
| `bourbon update`  | Overwrite and update Bourbon in the current directory |
| `bourbon help`    | Show help                                             |

## Browser Support

Bourbon supports Internet Explorer 11+ and the latest versions of Chrome,
Firefox, Safari, and Edge.

## The Bourbon Family

Bourbon is part of a larger, modular family of Sass utilities:

- [Neat]: A lightweight and flexible Sass grid
- [Bitters]: Scaffold styles, variables and structure for Bourbon projects
- [Refills]: Components and patterns built with Bourbon and Neat

  [Neat]: https://github.com/thoughtbot/neat
  [Bitters]: https://github.com/thoughtbot/bitters
  [Refills]: https://github.com/thoughtbot/refills

## Contributing

See the [contributing] document. Thank you, [contributors]!

  [contributing]: CONTRIBUTING.md
  [contributors]: https://github.com/thoughtbot/bourbon/graphs/contributors

## License

Bourbon is copyright © 2011-2017 [thoughtbot, inc.][thoughtbot] It is free
software, and may be redistributed under the terms specified in the [license].

  [license]: LICENSE.md

## About

Bourbon is maintained by Tyson Gach and the thoughtbot design team. It is funded
by [thoughtbot, inc.][thoughtbot] and the names and logos for thoughtbot are
trademarks of thoughtbot, inc.

[![thoughtbot][thoughtbot-logo]][thoughtbot]

We love open-source software! See [our other projects][community] or
[hire us][hire] to design, develop, and grow your product.

  [thoughtbot]: https://thoughtbot.com?utm_source=github
  [thoughtbot-logo]: http://presskit.thoughtbot.com/images/thoughtbot-logo-for-readmes.svg
  [community]: https://thoughtbot.com/community?utm_source=github
  [hire]: https://thoughtbot.com/hire-us?utm_source=github
