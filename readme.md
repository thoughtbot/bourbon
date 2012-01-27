# Bourbon Sass Mixins – [View Documentation](http://thoughtbot.com/bourbon)
The purpose of Bourbon Sass Mixins is to provide a comprehensive library of Sass
mixins that are designed to be as vanilla as possible, meaning they should not
deter you from using the original CSS syntax.
The mixins contain vendor specific prefixes for all CSS3 properties for support
amongst modern browsers. The prefixes also ensure graceful degradation for older
browsers that support only CSS3 prefixed properties.  Bourbon uses SCSS syntax.

# Requirements
Sass 3.1+

# Install for Rails
In your Gemfile:

    gem 'bourbon'

Then run:

    $ bundle install

Bourbon On [RubyGems](https://rubygems.org/gems/bourbon)

## Rails 3.1.x

Rename application.css to application.css.scss:

    mv app/assets/stylesheets/application.css app/assets/stylesheets/application.css.scss

Bourbon needs the sass files to be imported in a specific order to function properly. Therefore, you will need to disable the require\_tree sprocket directive.
Delete the following sprocket directive in application.css.scss:

    *= require_tree .

Import bourbon at the beginning of application.css.scss:

    @import "bourbon";

Import all additional stylesheets from your app/assets/stylesheets directory underneath the bourbon import:

    @import "bourbon";
    @import "home";
    @import "users";

## Rails 3.0.x and below
For Rails < 3.1 you must run the installation rake task. Please note, you should run this task every time a new version of Bourbon is released.
This will copy the Sass files into your project's public/stylesheets/sass directory.

    rake bourbon:install

Import the mixins at the beginning of your stylesheet

    @import 'bourbon/bourbon';

*Optional*: If you use a non-standard location for your sass files, you can specify the path to your sass files as an argument to the install task

    rake bourbon:install[app/stylesheets]

# Install in a non-rails project (static site, jekyll, wordpress, other...)
Bourbon includes an easy way to generate a directory with all the necessary files.
Install the bourbon gem:

    gem install bourbon

Change the directory to where you want to generate the bourbon folder and files:

    cd project_name/stylesheets/sass/

Install bourbon:

    bourbon install

This will generate a folder called `bourbon` containing all the mixins and other necessary bourbon files. It is recommended not to add or modify the bourbon files so that you can update bourbon easily.

Update an existing bourbon installation with:

    bourbon update

This will delete the bourbon directory and regenerate it.

*Sass Watch:* To output properly, Bourbon must be explicitly required (`-r`) by Sass at the command line:

    # Example (project root directory)
    sass --watch stylesheets/sass:stylesheets -r ./stylesheets/sass/bourbon/lib/bourbon.rb

You will need to import the mixins at the beginning of your stylesheet(s):

    @import 'bourbon/bourbon';


# Browser support
Bourbon aims to provide support for CSS3 properties that are not yet fully supported in modern stable browsers.


# All Supported Functions, Mixins, and Addons
[View the Bourbon documentation](http://thoughtbot.com/bourbon)

*@ denotes a mixin and must be prefaced with @include*

    #Functions
    --------------------------------
      compact(*args)
      modular-scale(*args)
      golden-ratio(*args)
      grid-width(*args)
      linear-gradient(*args)
      radial-gradient(*args)
      shade(*args)
      tint(*args)

    #Mixins
    --------------------------------
      animation
        @ animation(*args)
        @ animation-delay(*args)
        @ animation-direction(*args)
        @ animation-duration(*args)
        @ animation-fill-mode(*args)
        @ animation-iteration-count(*args)
        @ animation-name(*args)
        @ animation-play-state(*args)
        @ animation-timing-function(*args)

      @ appearance(*args)
      @ background-image(*args)
      @ background-size(*args)
      @ border-image(*args)

      border-radius
        @ border-radius(*args)
        @ border-radius-top(*args)
          @ border-radius-top-left(*args)
          @ border-radius-top-right(*args)
        @ border-radius-bottom(*args)
          @ border-radius-bottom-left(*args)
          @ border-radius-bottom-right(*args)
        @ border-radius-left(*args)
        @ border-radius-right(*args)

      @ box-shadow(*args)
      @ box-sizing(*args)

      columns
        @columns(*args)
        @column-count(*args)
        @column-fill(*args)
        @column-gap(*args)
        @column-rule(*args)
          @column-rule-color(*args)
          @column-rule-style(*args)
          @column-rule-width(*args)
        @column-span(*args)
        @column-width(*args)

      flex-box
        @ box(*args)
        @ box-align(*args)
        @ box-direction(*args)
        @ box-flex(*args)
        @ box-flex-group(*args)
        @ box-lines(*args)
        @ box-ordinal-group(*args)
        @ box-orient(*args)
        @ box-pack(*args)
        @ display-box

      @ inline-block
      @ linear-gradient(*args)
      @ radial-gradient(*args)
      @ transform(*args)
      @ transform-origin(*args)

      transition
        @ transition(*args)
        @ transition-delay(*args)
        @ transition-duration(*args)
        @ transition-property(*args)
        @ transition-timing-function(*args)

    #Addons
    --------------------------------
      @ button(*args)
      @ position(*args)

      #{$all-text-inputs}

      font-family
        $georgia
        $helvetica
        $lucida-grande
        $monospace
        $verdana

      timing-functions
        $ease-in-*
        $ease-out-*
        $ease-in-out-*
        * = quad, cubic, quart, quint, sine, expo, circ, back


## Help Out

Currently the project is a work in progress. Feel free to help out.
A general rule when considering filing a pull request for a new mixin: Do the following browsers *only* support the CSS3 property using vendor specific prefixes?
If the answer is yes, there is a high chance the mixin will be accepted via a pull request.

* Firefox 3.6+
* Safari 4.0+
* Chrome 4.0+
* Opera 10+
* IE 9+

*Bourbon does not intend to support IE filters.*

Resources for checking browser support: [MDN - Moz Dev Network](https://developer.mozilla.org/en-US/), [Mozilla CSS Extensions](https://developer.mozilla.org/en/CSS_Reference/Mozilla_Extensions), [Webkit CSS Properties](http://css-infos.net/properties/webkit.php), [Firefox CSS Properties](http://css-infos.net/properties/firefox.php), [MSDN - Microsoft Dev Network](http://msdn.microsoft.com/en-us/library/ms531207(v=VS.85).aspx)

Credits
-------

![thoughtbot](http://thoughtbot.com/images/tm/logo.png)

Bourbon is maintained and funded by [thoughtbot, inc](http://thoughtbot.com/community)

The names and logos for thoughtbot are trademarks of thoughtbot, inc.

License
-------

Bourbon is Copyright © 2011 thoughtbot. It is free software, and may be redistributed under the terms specified in the LICENSE file.
