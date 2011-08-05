#Bourbon Sass Mixins
The purpose of Bourbon Sass Mixins is to provide a comprehensive library of sass mixins that are designed to be as vanilla as possible. Meaning they should not deter from the original CSS syntax. The mixins contain vendor specific prefixes for all CSS3 properties for support amongst modern browsers. The prefixes also ensure graceful degradation for older browsers that support only CSS3 prefixed properties.
Bourbon uses SCSS syntax.

#Requirements
Sass 3.1+


#Install for Rails
Update your Gemfile

    gem 'bourbon'

    bundle install

##Rails 3.1.x
Bourbon needs the sass files to be imported in a specific order to function properly—therefore you will need to disabled the require_tree sprocket directive.  
Comment-out the following sprocket directive in /application.css.scss (Remove the =)

    * require_tree .

Import the mixins at the beginning of your stylesheet

    @import 'bourbon';

##Rails 3.0.9 and below
For Rails < 3.1 you must run the installation rake task.
This will copy the Sass files into your project's public/stylesheets/sass directory.

    rake bourbon:install

Import the mixins at the beginning of your stylesheet

    @import 'bourbon/bourbon';


#Install without Rails
The following script will generate a *bourbon* directory and convert all .css.scss to .scss extensions. The *bourbon* directory is for 'sass --watch' use outside of rails.  
Preliminary step: clone this repo and cd into the directory.

**Step 1:** Make script executable by changing file permission

    chmod a+x generate-bourbon.sh

**Step 2:** Generate files

    ./generate-bourbon.sh

**Step 3:** Move the new *bourbon* directory into your project's sass directory. *e.g. stylesheets/sass/*

**Step 4:** Bourbon requires an additional sass extension to output properly. You must watch your sass files with the following flag appended:  
*-r ./bourbon/lib/bourbon.rb*

    # Example (project root directory)
    sass --watch stylesheets/sass:stylesheets -r ./stylesheets/sass/bourbon/lib/bourbon.rb


#Browser support
Bourbon aims to provide support for CSS3 properties that are not yet fully supported in modern stable browsers.  
**Pull requests:** A general rule when considering a new mixin: Do the following browsers *only* support the CSS3 property using vendor specific prefixes? If the answer is yes, there is a high chance the mixin will be accepted via a pull request.

* Firefox 3.6+
* Safari 4.0+
* Chrome 4.0+
* Opera 10+
* IE 9+

Bourbon does not intend to support IE filters.


#Using Bourbon Mixins
Below are a few examples of mixin usage. Note that these are just a few, explore the repo to find out more.


###Animation

The animation mixins support comma separated lists of values, which allows different transitions for individual properties to be described in a single style rule. Each value in the list corresponds to the value at that same position in the other properties.

    @include animation-name(slideup, fadein);
    @include animation-duration(1.0s, 1.2s);
    @include animation-timing-function(ease-in-out, ease-out);

    # Shorthand for a basic animation. Supports multiple parentheses-deliminated values for each variable.
    @include animation-basic((slideup, fadein), (1.0s, 2.0s), ease-in);


###Background-image

The background-image mixin is helpful for chaining multiple comma deliminated background images and/or linear-gradients into one background-image property.Background-image supports up to 10 background-images.

    # Multiple image assets
    @include background-image(url("/images/a.png"), url("images/b.png"));

    # Image asset with a linear-gradient
    @include background-image(url("/images/a.png"), linear-gradient(white 0, yellow 50%, transparent 50%));

    # Multiple linear-gradients;
    @include background-image(linear-gradient(hsla(0, 100%, 100%, 0.25) 0%, hsla(0, 100%, 100%, 0.08) 50%, transparent 50%), linear-gradient(#4e7ba3, darken(#4e7ba4, 10%)) );


###Border Radius

Border-radius will also take short-hand notation.

    @include border-radius(10px);
    @include border-radius(5px 5px 2px 2px);


###Box Shadow

Box-Shadow supports single or multiple arguments:

    @include box-shadow(1px 1px 2px 0 #ff0000);

    # Multiple arguments must be comma-diliminated.
    @include box-shadow(1px 1px 2px 0 #fff0000, -1px -2px 0 #ccc);


###Box Sizing

Box-sizing will change the box-model of the element it is applied to.

    @include box-sizing(border-box);


###Flex Box

The flex-box mixin is based on the 2009 w3c spec. The mixin with change to the flexible box-model. [More info.](http://www.w3.org/TR/2009/WD-css3-flexbox-20090723/)

    div.parent {
      @include display-box;
      @include box-align(start);
      @include box-orient(horizontal);
      @include box-pack(start);
    }

    div.parent > div.child {
      @include box-flex(2);
    }

    # Alternative custom shorthand mixin.
    div.parent {
      @include box($orient: horizontal, $pack: center, $align: stretch);
    }


###Inline-block

The inline-block mixin provides support for the inline-block property in IE6 and IE7.

    @include inline-block;


###Linear-Gradient

Gradient position is optional, default is top. Position can be a degree. Color-stops are optional as well. Mixin will support up to 10 gradients.

    @include linear-gradient(#1e5799, #2989d8);
    @include linear-gradient(top, #1e5799 0%, #2989d8 100%);
    @include linear-gradient(50deg, #1e5799 0%, #2989d8 50%, #207cca 51%, #7db9e8 100%);


###Position

Shorthand notation for setting the position of elements in your page.

Instead of writing:

    position: relative;
    top: 0px;
    left: 100px;

You can write:

    @include position(relative, 0px 0 0 100px);

The first parameter is optional, with a default value of relative. The second parameter is a space delimited list of values that follow the standard CSS shorthand notation.

Note: unitless values will be ignored. In the example above, this means that selectors will not be generated for the right and bottom positions, while the top position is set to 0px.


###Radial-Gradient

Takes up to 10 gradients. Position and shape are required.

    @include radial-gradient(50% 50%, circle cover, #1e5799, #efefef);
    @include radial-gradient(50% 50%, circle cover, #eee 10%, #1e5799 30%, #efefef);


###Transform

    @include transform(translateY(50px));


###Transitions

Shorthand mixin: Supports multiple parentheses-deliminated values for each variable.

    @include transition (all, 2.0s, ease-in-out);
    @include transition ((opacity, width), (1.0s, 2.0s), ease-in, (0, 2s));
    @include transition ($property:(opacity, width), $delay: (1.5s, 2.5s));`


##Functions
###Compact

The compact function will strip out any value from a list that is 'false'. Takes up to 10 arguments.

    $full:  compact($name-1, $name-2, $name-3, $name-4, $name-5, $name-6, $name-7, $name-8, $name-9, $name-10);


###Golden Ratio

Returns the golden ratio of a given number. Must provide a Pixel or Em value for first argument. Also takes a required increment value that is not zero and an integer: ...-3, -2, -1, 1, 2, 3...

    div {
                        Increment Up GR with positive value
      font-size:        golden-ratio(14px,  1);    // returns: 22.652px

                        Increment Down GR with negative value
      font-size:        golden-ratio(14px, -1);    // returns: 8.653px

                        Can be used with ceil(round up) or floor(round down)
      font-size: floor( golden-ratio(14px,  1) );  // returns: 22px
      font-size:  ceil( golden-ratio(14px,  1) );  // returns: 23px
    }

Resources: [modularscale.com](http://modularscale.com) & [goldenratiocalculator.com](http://goldenratiocalculator.com)


###Linear-gradient

Outputs a linear-gradient. Use in conjuntion with the background-image mixin. The function takes the same arguments as the linear-gradient mixin (See Mixins section of this README).

    # Image asset with a linear-gradient
    @include background-image(url("/images/a.png"), linear-gradient(white 0, yellow 50%, transparent 50%));

    # Multiple linear-gradients;
    @include background-image(linear-gradient(hsla(0, 100%, 100%, 0.25) 0%, hsla(0, 100%, 100%, 0.08) 50%, transparent 50%), linear-gradient(#4e7ba3, darken(#4e7ba4, 10%)) );


###Grid-width

Easily setup and follow a grid based design. Need help gridding? Check out [gridulator.com](http://gridulator.com/)

    # The $gw-column and $gw-gutter variables must be defined in your base stylesheet to properly use the grid-width function.
    $gw-column: 100px;          // Column Width
    $gw-gutter: 40px;           // Gutter Width

    div {
      width: grid-width(4);     // returns 520px;
      margin-left: $gw-gutter;  // returns 40px;
    }


###Tint & Shade

Tint & shade are different from lighten() and darken() functions built into sass.  
Tint is a mix of a color with white. Tint takes a color and a percent argument.

    div {
      background: tint(red, 40%);
    }

Shade is a mix of a color with black. Shade takes a color and a percent argument.

    div {
      background: shade(blue, 60%);
    }


##Add-ons

###Animation-Keyframes

Animation-keyframes are provided for quick out-of-the-box animations. Two animation-keyframes are provided: fade-in, fade-out. These animations can be called using the *animation-name* mixin; alternatively the *animation-basic* mixin can be used. Supports Webkit browsers and Mozilla 5.0+.

    div.fade-in {
      @include animation-name(fade-in);
    }

    div.fade-out {
      @include animation-basic(fade-out, 2.0s, ease-in);
      opacity: 0;
    }


###Buttons

The button add-on provides well-designed buttons with a single line in your CSS.  
The mixin supports a style parameter and an optional color argument. The available styles are **"simple"** (default), **"shiny"**, and **"pill"**.

    # The mixin can be called with no arguments, which will render a blue button with the **"simple"** style.
    button, input[type="button"] {
      @include button;
    }

    # Pass a style argument
    button, input[type="button"] {
      @include button(shiny);
    }

Create beautiful buttons by defining a style and color argument; using a single color, the mixin calculates the gradient, borders, box shadow, text shadow and text color of the button. The mixin will change the text to be light when on a dark background, and dark when on a light background.

    # Style + color arguments
    button, input[type="button"] {
      @include button(shiny, #ff0000);
    }


#All Supported Functions, Mixins, and Addons
*@ denotes a mixin and must be prefaced with @include*

    #Functions
    --------------------------------
      compact(*args)
      golden-ratio(*args)
      linear-gradient(*args)
      grid-width(*args)
      shade(*args)
      tint(*args)

    #Mixins
    --------------------------------
      animation
        @ animation(*args)
        @ animation-basic(*args)
        @ animation-delay(*args)
        @ animation-direction(*args)
        @ animation-duration(*args)
        @ animation-fill-mode(*args)
        @ animation-iteration-count(*args)
        @ animation-name(*args)
        @ animation-play-state(*args)
        @ animation-timing-function(*args)

      @ background-image(*args)
      @ border-radius(*args)
      @ box-shadow(*args)
      @ box-sizing(*args)

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

      transition
        @ transition(*args)
        @ transition-delay(*args)
        @ transition-duration(*args)
        @ transition-property(*args)
        @ transition-timing-function(*args)

    #Addons
    --------------------------------
      animation-keyframes (fade-in, fade-out)
    @ button(*args)
    @ position(*args)


##Help Out

Currently the project is a work in progress. Feel free to help out.  
**Pull requests:** See *Browser Support* in this readme for more info

Credits
-------

![thoughtbot](http://thoughtbot.com/images/tm/logo.png)

Bourbon is maintained and funded by [thoughtbot, inc](http://thoughtbot.com/community)

The names and logos for thoughtbot are trademarks of thoughtbot, inc.

License
-------

Bourbon is Copyright © 2011 thoughtbot. It is free software, and may be redistributed under the terms specified in the LICENSE file.
