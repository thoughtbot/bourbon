#Vanilla Sass Mixins
The purpose of Vanilla Sass Mixins is to provide a comprehensive framework of sass mixins that are designed to be as vanilla as possible. Meaning they should not deter from the original CSS syntax. The mixins contain vendor specific prefixes for all CSS3 properties for support amongst most browsers. The prefixes also ensure graceful degradation as browsers continue to support official css3 syntax.
______________

##Requirements
Sass 3.1+

##Install
**Clone the Repo**

	git clone git@github.com:plapier/sass-mixins.git

**Import the mixins at the beginning of your stylesheet**

	@import 'sass-mixins/mixins';

##Usage
**Linear-Gradient**

Usage: Gradient position is optional, default is top. Position can be a degree. Color stops are optional as well.

	@include linear-gradient(#1e5799, #2989d8);
	@include linear-gradient(top, #1e5799 0%, #2989d8 100%);
	@include linear-gradient(50deg, #1e5799 0%, #2989d8 50%, #207cca 51%, #7db9e8 100%);`


**Border Radius**

Border-radius will also take short-hand notation.
	@include border-radius(10px);
	@include border-radius(5px 5px 2px 2px);


**Animation**

The three following properties support a comma separated list of values, which allows different transitions for individual properties to be described in a single style rule. Each value in the list corresponds to the value at that same position in the other properties. animation-name | animation-duration | animation-timing-function

	@include animation-name(slideup, fadein);
 	@include animation-duration(1.0s, 1.2s);
 	@include animation-timing-function(ease-in-out, ease-out);

Shorthand for a basic animation. Supports multiple parentheses-deliminated values for each variable.

	@include animation-basic((slideup, fadein), (1.0s, 2.0s), ease-in);


**Transitions**

Shorthand mixin: Supports multiple parentheses-deliminated values for each variable.
	@include transition (all, 2.0s, ease-in-out);
	@include transition ((opacity, width), (1.0s, 2.0s), ease-in, (0, 2s));
	@include transition ($property:(opacity, width), $delay: (1.5s, 2.5s));`

Currently the project is a work in progress. Feel free to help out.


