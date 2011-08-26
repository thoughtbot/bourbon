To update the demo and run the server locally:
Start the jekyll server:
    jekyll --server

Watch the sass folder:
    sass --watch stylesheets/sass:stylesheets -r ./stylesheets/sass/bourbon/lib/bourbon.rb



To pull in the latest Bourbon changes, you must rebase against master.
    git fetch && git rebase origin/master

To update the bourbon files with the latest version:
    ./generate-bourbon.sh


For Code Highlighting within Jekyll:
    gem install pygmentize

    {% highlight css %}
      <code here>
    {% endhighlight %}


Jekyll Wiki:
https://github.com/mojombo/jekyll/wiki

Pygmentize:
http://pygments.org/
