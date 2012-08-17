------------------------------------------------------------------------------------------
Bourbon README for getting the gh-pages server up and running
------------------------------------------------------------------------------------------

Run the server locally:
    `$ jekyll --server`

To install bourbon:
    `$ gem install bourbon`
    `$ bourbon install`

Install Bourbon in the root directory:
    bourbon install

Watch the sass folder from root directory:
    `$ sass --watch stylesheets/sass:stylesheets -r ./stylesheets/sass/bourbon/lib/bourbon.rb`

------------------------------------------------------------------------------------------

To pull in the latest changes on gh-pages branch:
    `$ git pull --rebase origin gh-pages`

To pull in the latest Bourbon changes, you must fetch and merge master into gh-pages:
    `$ git fetch origin master && git merge master`

To update the bourbon files with the latest version; from the root directory:
    `$ bourbon update`

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
