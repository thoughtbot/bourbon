[![Bourbon Sass Mixin Library](http://bourbon.io/images/bourbon-logo.png)](http://bourbon.io)
# A simple and lightweight mixin library for Sass
Bourbon is a comprehensive library of sass mixins that are designed to be simple
and easy to use. No configuration required. The mixins aim to be as vanilla as
possible, meaning they should be as close to the original CSS syntax as possible.

The mixins contain vendor specific prefixes for all CSS3 properties for support
amongst modern browsers. The prefixes also ensure graceful degradation for older
browsers that support only CSS3 prefixed properties. Bourbon uses SCSS syntax.

#[Documentation & Demo](http://bourbon.io)

# Requirements
Sass 3.1+

# Install for Rails
In your Gemfile:

    gem 'bourbon'

Then run:

    $ bundle install

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

## Rails 3.0.x
For Rails 3.0.x you must run the installation rake task. You should run this task every time a new version of Bourbon is released.
This will copy the Sass files into your project's `public/stylesheets/sass` directory.

    rake bourbon:install

Import the mixins at the beginning of your stylesheet

    @import 'bourbon/bourbon';

*Optional*: If you use a non-standard location for your sass files, you can specify the path to your sass files as an argument to the install task

    rake bourbon:install[app/stylesheets]

# Rails 2.3 or a non-Rails project (static site, jekyll, wordpress, etc...)
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
[View the Bourbon documentation](http://bourbon.io)

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

Got questions? Need help? Tweet at [@phillapier](http://twitter.com/phillapier).

Bourbon is maintained and funded by [thoughtbot, inc](http://thoughtbot.com/community)

The names and logos for thoughtbot are trademarks of thoughtbot, inc.

License
-------

Bourbon is Copyright © 2011-2012 thoughtbot. It is free software, and may be redistributed under the terms specified in the LICENSE file.
