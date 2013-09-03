---
layout: post
title: Setting up a static server with CherryPy
---

Use this when your Django development server just doesn't cut, or when you're too lazy to install an XAMPP stack.

I wrote this server when I started working with HTML5 `<video>` tag. I found out that Django's dev server [doesn't support byte-range downloads][quesiton] (for progressive downloads and such). This made the served videos totally unseekable using Javascript.

So, [I wrote this server][gist], and added a URL redirect inside my Django app to serve all video content through CherryPy (instead through Django) ... and VOILA! Everything worked!

## Baking instructions:

1. Install CherryPy: `pip install cherrypy` or `easy_install cherrypy`
2. Make sure it's installed: `python -c 'import cherrypy'`
3. You can edit the listening URL/port inside the source file.
4. The root directory is the directory where you executed the script.

## Eating instructions:

Just execute the file on your shell/terminal:

{% highlight bash %}
$ python cherrypy_static_server.py
{% endhighlight %}

### Note

There's an alternative using Python's SimpleHTTPServer alternative:

{% highlight bash %}
$ python -m SimpleHTTPServer 8000
{% endhighlight %}


[gist]: https://gist.github.com/oryband/4063177
[question]: http://stackoverflow.com/q/4538810/207894
