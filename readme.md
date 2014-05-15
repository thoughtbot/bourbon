[![Bourbon Sass Mixin Library](http://bourbon.io/images/shared/bourbon-logo.png)](http://bourbon.io)
<br>
<br>
[![Gem Version](https://badge.fury.io/rb/bourbon.png)](http://badge.fury.io/rb/bourbon) [![Code Climate](https://codeclimate.com/github/thoughtbot/bourbon.png)](https://codeclimate.com/github/thoughtbot/bourbon)  [![Gitter chat](https://badges.gitter.im/thoughtbot/bourbon.png)](https://gitter.im/thoughtbot/bourbon)

-
:warning: Bourbon **4.0.0** requires Sass **3.3.x**. If you are using **libsass** or **sass-rails** use Bourbon **3.2.x**. ([3.2.x install instructions](#install-for-older-versions-of-sass)) 

## A lightweight mixin library for Sass
Bourbon is a library of pure sass mixins that are designed to be simple
and easy to use. No configuration required.

The mixins aim to be as vanilla as possible, meaning they should be as close to the original CSS syntax as possible.

The mixins contain vendor specific prefixes for all CSS3 properties for support
amongst modern browsers. The prefixes also ensure graceful degradation for older
browsers that support only CSS3 prefixed properties. Bourbon uses SCSS syntax.



### [Documentation & Demo](http://bourbon.io)

### Requirements
Sass 3.3+

### Install for Rails 3.1+
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

##### [Rails 3.0.x Install Instructions](https://github.com/thoughtbot/bourbon/wiki/Rails-3.0.x-Install) | [Rails 2.3 Install Instructions](https://github.com/thoughtbot/bourbon/wiki/Bourbon-v2.x-or-Rails-2.3-Install)

### Non-Rails projects
Bourbon includes an easy way to generate a directory with all the necessary files.  
For command line help: `$ bourbon help` or visit the [Command line tools wiki](https://github.com/thoughtbot/bourbon/wiki/Command-Line-Tools)

##### Install (Bourbon v3.0+)

    gem install bourbon

Install Bourbon into the current directory by generating the `bourbon` folder:

    bourbon install

The generated folder will contain all the mixins and other necessary Bourbon files. It is recommended not to add or modify the Bourbon files so that you can update Bourbon easily.

You can specify a target directory using the `path` flag:

    bourbon install --path my/custom/path/

###### Install for older versions of Sass

If you are using a version of Sass older than 3.3.x (This includes alternative implementations like libsass or sass-rails and frameworks like ZURB Foundation or Compass), Bourbon 4.x will not work.

Use the `-v` flag to install a specific version of the bourbon gem.

    gem install bourbon -v 3.2.1

If you have installed Bourbon 4.x in error, you may want to remove it.

    gem uninstall bourbon -v 4.0.1

##### Import

Lastly, import the mixins at the beginning of your stylesheet(s):

    @import 'bourbon/bourbon';

Note: Bourbon no longer requires a custom `sass --watch` command for Bourbon v3.0+

##### Other Commands
Visit the [Command line tools wiki](https://github.com/thoughtbot/bourbon/wiki/Command-Line-Tools) for a complete list

    bourbon help
    bourbon update
    
##### [Bourbon v2.x install instructions](https://github.com/thoughtbot/bourbon/wiki/Bourbon-v2.x-or-Rails-2.3-Install)


- [Changelog](https://github.com/thoughtbot/bourbon/releases)
- [Browser support](https://github.com/thoughtbot/bourbon/wiki/Browser-Support)

### Chat with us
[![Gitter chat](https://badges.gitter.im/thoughtbot/bourbon.png)](https://gitter.im/thoughtbot/bourbon)

### Credits
![thoughtbot](http://thoughtbot.com/images/tm/logo.png)

Bourbon is maintained and funded by [thoughtbot, inc](http://thoughtbot.com/community)

The names and logos for thoughtbot are trademarks of thoughtbot, inc.

Got questions? Need help? Tweet at [@phillapier](http://twitter.com/phillapier).

### License
Bourbon is Copyright © 2011-2013 thoughtbot. It is free software, and may be redistributed under the terms specified in the LICENSE file.
