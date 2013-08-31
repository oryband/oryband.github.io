---
layout: post
title: Removing a Homebrew package with all of its dependencies
---

Most packages have other packages they depend upon to work properly. However, uninstalling a package doesn't remove it's dependent packages. Overtime this creates a junkload of packages which I don't like much.

I was looking for an easy way to remove packages which don't have any other packages depending on them.

For example, the `python` package depends upon the `readline` package. Let's say there's no other installed package on my machine which depends upon `readline`. I want `brew rm python` to remove `readline` as well.

Unfortunately, there isn't a no-dirty-hands way of doing this:


It appears that currently, there's no easy way to accomplish this.

However, I [filed an issue on Homebrew's GitHub page][2], and somebody suggested a temporary solution until they add an exclusive command to solve this.

There's an [external command][3] called `brew leaves` which prints all packages that are not dependencies of other packages.

If you do a logical ***and*** on the output of `brew leaves` and `brew deps <package>`, you might just get a list of the orphaned dependency packages, which you can uninstall manually afterwards. Combine this with `xargs` and you'll get what you need, I guess (untested, don't count on this).

## Edit 

It looks like [the issue is now solved using an external command called `brew rmdeps` or `brew rmtree`][1].

----------


**EDIT:** Somebody just suggested a very similar solution, using `join` instead of `xargs`:

{% highlight bash %}
brew rm FORMULA
brew rm $(join <(brew leaves) <(brew deps FORMULA))
{% endhighlight %}


----------


See the [comment on the issue mentioned above][4] for more info.


  [1]: https://github.com/mxcl/homebrew/issues/7465#issuecomment-4998005
  [2]: https://github.com/mxcl/homebrew/issues/7465
  [3]: https://github.com/mxcl/homebrew/wiki/External-Commands
  [4]: https://github.com/mxcl/homebrew/issues/7465#issuecomment-2027137
