------------------------------------------------------------------------------------------
Bourbon README for getting the gh-pages server up and running
------------------------------------------------------------------------------------------

To install bourbon:
    `$ bundle install`

Install Bourbon stylesheets in the root directory:
    `$ bourbon install`

Run the server locally:
    `$ jekyll serve`

Watch the sass folder from root directory:
    `$ sass --watch stylesheets/home:stylesheets`
    `$ sass --watch stylesheets/docs:stylesheets`

------------------------------------------------------------------------------------------

To pull in the latest changes on gh-pages branch:
    `$ git pull --rebase origin gh-pages`

To pull in the latest Bourbon changes, you must fetch and merge master into gh-pages:
    `$ git fetch origin master && git merge master`

To update the bourbon files with the latest version:
From the root directory:
    `$ bourbon update`

------------------------------------------------------------------------------------------

To add a new mixin (function or addon) to the docs:

Create a new file in the `_includes/mixin/` directory:
    `$ touch _includes/mixin/box-shadow.html`

Add the link to navigation.html
    `edit _includes/navigation.html`

Add the partial to mixins.html
    `edit _includes/mixins.html`

Add the mixin to the complete-list.html
    `edit _includes/complete-list.html`

------------------------------------------------------------------------------------------

For Code Highlighting within Jekyll:
    `$ gem install pygmentize`

    {% highlight scss %}
      <code here>
    {% endhighlight %}


Jekyll Wiki:
https://github.com/mojombo/jekyll/wiki

Pygmentize:
http://pygments.org/

------------------------------------------------------------------------------------------

To generate or update the docset, run:
    `$ rake docset`
