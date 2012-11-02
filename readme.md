[![Bourbon Sass Mixin Library](http://bourbon.io/images/bourbon-logo.png)](http://bourbon.io)

# A simple and lightweight mixin library for Sass
Bourbon is a comprehensive library of sass mixins that are designed to be simple
and easy to use. No configuration required.  
The mixins aim to be as vanilla as possible, meaning they should be as close to the original CSS syntax as possible.

The mixins contain vendor specific prefixes for all CSS3 properties for support
amongst modern browsers. The prefixes also ensure graceful degradation for older
browsers that support only CSS3 prefixed properties. Bourbon uses SCSS syntax.

#[Documentation & Demo](http://bourbon.io)

# Requirements
Sass 3.2+

# Install for Rails 3.1+
In your Gemfile:

    gem 'bourbon'

Then run:

    $ bundle install

Restart your server. Then rename application`.css` to application`.css.scss`:

    mv app/assets/stylesheets/application.css app/assets/stylesheets/application.css.scss

Delete the sprocket directive in application.css.scss: [Why?](https://github.com/thoughtbot/bourbon/wiki/Rails-Sprockets)

    *= require_tree .

Import Bourbon at the beginning of application.css.scss. All additional stylesheets must be imported below Bourbon:

    @import "bourbon";
    @import "home";
    @import "users";


[Help! I'm getting an undefined mixin error.](https://github.com/thoughtbot/bourbon/wiki/Rails-Help-%5C-Undefined-mixin)

##### [Rails 3.0.x Install Instructions](https://github.com/thoughtbot/bourbon/wiki/Rails-3.0.x-Install)

##### Rails 2.3 - follow the [non-rails installation](#non-rails)

# <span id="non-rails"></span>Non-Rails projects
Bourbon includes an easy way to generate a directory with all the necessary files.  
For command line help: `$ bourbon help` or visit the [Command line tools wiki](https://github.com/thoughtbot/bourbon/wiki/Command-Line-Tools)

####Install

    gem install bourbon

Install Bourbon into the current directory by generating the `bourbon` folder:

    bourbon install

<small>The generated folder will contain all the mixins and other necessary Bourbon files.   
It is recommended not to add or modify the Bourbon files so that you can update Bourbon easily.</small>

#### Sass Watch
*Sass Watch:* To output properly, Bourbon must be explicitly required (`-r`) by Sass at the command line:

    # Example (project root directory)
    sass --watch stylesheets/sass:stylesheets -r ./stylesheets/sass/bourbon/lib/bourbon.rb

Lastly, import the mixins at the beginning of your stylesheet(s):

    @import 'bourbon/bourbon';


#### Other Commands
Visit the [Command line tools wiki](https://github.com/thoughtbot/bourbon/wiki/Command-Line-Tools) for a complete list

    bourbon help
    bourbon update

# Browser support
Bourbon aims to provide support for CSS3 properties that are not yet fully supported in modern stable browsers.


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


Resources for checking browser support:

* [MDN - Moz Dev Network](https://developer.mozilla.org/en-US/)
* [Mozilla CSS Extensions](https://developer.mozilla.org/en/CSS_Reference/Mozilla_Extensions)
* [Webkit CSS Properties](http://css-infos.net/properties/webkit.php)
* [MSDN - Microsoft Dev Network](http://msdn.microsoft.com/en-us/library/ms531207\(v=VS.85\).aspx)

Credits
-------

![thoughtbot](http://thoughtbot.com/images/tm/logo.png)

Bourbon is maintained and funded by [thoughtbot, inc](http://thoughtbot.com/community)

The names and logos for thoughtbot are trademarks of thoughtbot, inc.

Got questions? Need help? Tweet at [@phillapier](http://twitter.com/phillapier).

License
-------

Bourbon is Copyright © 2011-2012 thoughtbot. It is free software, and may be redistributed under the terms specified in the LICENSE file.
