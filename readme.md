#Bourbon Vanilla Sass Mixins
The purpose of Bourbon Vanilla Sass Mixins is to provide a comprehensive framework of sass mixins that are designed to be as vanilla as possible. Meaning they should not deter from the original CSS syntax. The mixins contain vendor specific prefixes for all CSS3 properties for support amongst modern browsers. The prefixes also ensure graceful degradation for older browsers that support only CSS3 prefixed properties.


##Requirements
Sass 3.1+


##Install
**Update your Gemfile**

    gem 'bourbon'

    bundle install

###Rails 3.1.x
**Remove these sprockets directives in /application.css.scss**

    *= require_self
    *= require_tree .

**Import the mixins at the beginning of your stylesheet**

    @import 'bourbon';

###Rails 3.0.9 and below
**For Rails < 3.1 you must run the installation rake task.**
This will copy the Sass files into your project's public/stylesheets/sass directory.

    rake bourbon:install

**Import the mixins at the beginning of your stylesheet**

    @import 'bourbon/bourbon';


##Usage
Below are a few examples of mixin usage. Note that these are just a few, explore the repo to find out more.

**Animation**

The three following properties support a comma separated list of values, which allows different transitions for individual properties to be described in a single style rule. Each value in the list corresponds to the value at that same position in the other properties. animation-name | animation-duration | animation-timing-function

    @include animation-name(slideup, fadein);
    @include animation-duration(1.0s, 1.2s);
    @include animation-timing-function(ease-in-out, ease-out);


**Border Radius**

Border-radius will also take short-hand notation.

    @include border-radius(10px);
    @include border-radius(5px 5px 2px 2px);


Shorthand for a basic animation. Supports multiple parentheses-deliminated values for each variable.

    @include animation-basic((slideup, fadein), (1.0s, 2.0s), ease-in);


**Box Shadow**

Box-Shadow supports single or multiple arguments:

    @include box-shadow(1px 1px 2px 0 #ff0000);

Multiple arguments must be comma-diliminated.

    @include box-shadow(1px 1px 2px 0 #fff0000, -1px -2px 0 #ccc);


**Border Radius**

Border-radius will also take short-hand notation.

    @include border-radius(10px);
    @include border-radius(5px 5px 2px 2px);


**Box Sizing**

Box-sizing will change the box-model of the element it is applied to. This is really helpful for properly styling padding and margin to all text-based input types (e.g. input[type="text"]).

    @include box-sizing(border-box);


**Flex Box**

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

**Inline-block**

The inline-block mixin provides support for the inline-block property in IE6 and IE7.

    @include inline-block;


**Linear-Gradient**

Gradient position is optional, default is top. Position can be a degree. Color-stops are optional as well. Mixin will support up to 10 gradients.

    @include linear-gradient(#1e5799, #2989d8);
    @include linear-gradient(top, #1e5799 0%, #2989d8 100%);
    @include linear-gradient(50deg, #1e5799 0%, #2989d8 50%, #207cca 51%, #7db9e8 100%);


**Position**

Shorthand notation for setting the position of elements in your page.

Instead of writing:

    position: relative;
    top: 0px;
    left: 100px;

You can write:

    @include position(relative, 0px 0 0 100px);

The first parameter is optional, with a default value of relative. The second parameter is a space delimited list of values that follow the standard CSS shorthand notation.

Note: unitless values will be ignored. In the example above, this means that selectors will not be generated for the right and bottom positions, while the top position is set to 0px.


**Radial-Gradient**

Takes up to 10 gradients. Position and shape are required.

    @include radial-gradient(50% 50%, circle cover, #1e5799, #efefef);
    @include radial-gradient(50% 50%, circle cover, #eee 10%, #1e5799 30%, #efefef);

**Transform**

    @include transform(translateY(50px));


**Transitions**

Shorthand mixin: Supports multiple parentheses-deliminated values for each variable.

    @include transition (all, 2.0s, ease-in-out);
    @include transition ((opacity, width), (1.0s, 2.0s), ease-in, (0, 2s));
    @include transition ($property:(opacity, width), $delay: (1.5s, 2.5s));`


##Add-ons

**Buttons**

The button add-on provides well-designed buttons with a single line in your CSS. The demo folder contains examples of the buttons in use.

The mixin can be called with no parameters to render a blue button with the "simple" style.

    button,
    input[type="button"] {
      @include button;
    }

The mixin supports a style parameter. Right now the available styles are "simple" (default), "shiny", and "pill".

    button,
    input[type="button"] {
      @include button(shiny);
    }

The real power of the mixin is revealed when you pass in the optional color argument. Using a single color, the mixin calculates the gradient, borders, box shadow, text shadow and text color of the button. The mixin will change the text to be light when on a dark background, and dark when on a light background.

    button,
    input[type="button"] {
      @include button(shiny, #ff000);
    }


##Help Out
Currently the project is a work in progress. Feel free to help out.



