---
layout: post
title: Removing Homebrew packages with dependencies
---

Most packages have other packages they depend upon to work properly. However, uninstalling a package doesn't remove it's dependent packages. This is a desirable state - As some other package can depend upon these dependent packages as well.

For example, the `python` package depends upon the `readline` package. Let's say there's no other installed package on the machine which depends upon `readline`. I want `brew rm python` to remove `readline` as well.

However, overtime this creates a junkload of packages which pollute your `brew list` of installed packages. This disturbs my inner programmer's OCD, and thus cannot be accepted! I was looking for an easy way to remove packages which don't have any other packages depending on them. Unfortunately, there isn't a solution that doesn't involve a bit of hacking:

I [filed an issue on Homebrew's GitHub page][1], and somebody suggested a temporary solution until they add an exclusive command to solve this.

There's an [external command][2] called `brew leaves` which prints all packages that are not dependencies of other packages.

If you do a *logical and* on the output of `brew leaves` and `brew deps <package>`, you might just get a list of the orphaned dependency packages, which you can uninstall manually afterwards. Combine this with `join` and you'll get what you need. This example does just that, for a single package you wish to *clean after*:

{% highlight bash %}
$ brew rm FORMULA
$ brew rm $(join <(brew leaves) <(brew deps FORMULA))
{% endhighlight %}

And that pretty much solves the problem. My OCD can keep calm now.


  [1]: https://github.com/mxcl/homebrew/issues/7465
  [2]: https://github.com/mxcl/homebrew/wiki/External-Commands#leaves
