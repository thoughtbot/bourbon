# Bourbon Website and Documentation

This website is powered by [Jekyll](http://jekyllrb.com). Here’s how to get it working locally:

1. Run the setup script:

  ```bash
  bin/setup
  ```

2. After setting up, you can run the application using [foreman]:

  ```bash
  foreman start
  ```

If you don't have `foreman`, see [Foreman's install instructions][foreman]. It
is [purposefully excluded from the project's `Gemfile`][exclude].

[foreman]: https://github.com/ddollar/foreman
[exclude]: https://github.com/ddollar/foreman/pull/437#issuecomment-41110407

***

To pull in the latest changes on gh-pages branch:

```bash
git pull --rebase origin gh-pages
```

To update the Bourbon files:

```bash
bourbon update
```

This will delete the Bourbon directory and regenerate it. Of course, make sure your Bourbon gem is up-to-date: `gem update bourbon`.

***

### Add a new mixin, function or add-on to the docs

1. Create a new file in the `_includes/mixins/` (or `_includes/functions/`/`_includes/addons/`) directory:

  ```bash
  touch _includes/mixins/box-shadow.html
  ```

2. Add the link to `navigation.html`

  ```bash
  edit _includes/navigation.html
  ```

3. Add the partial to `mixins.html`

  ```bash
  edit _includes/mixins.html
  ```

4. Add the mixin to the `complete-list.html`

  ```bash
  edit _includes/complete-list.html
  ```

***

For code highlighting in Jekyll:

```liquid
{% highlight scss %}
insert code here
{% endhighlight %}
```

***

To generate or update the docset (for [Dash](http://kapeli.com/dash)), run:

```bash
rake docset
```

Since the update will go live to all users as soon as you push, make sure the generated docset displays correctly by un-archiving
`docset/bourbon.tgz` and opening it in Dash.
