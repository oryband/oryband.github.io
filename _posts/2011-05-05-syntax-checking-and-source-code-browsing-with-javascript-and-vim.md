---
layout: post
title: Syntax checking and source code browsing with Javascript and Vim
---

The exploding world of web-apps, node.js and Co. is generating big Javascript projects daily. One needs an easy way to check its syntax (linting) and be able to browse its source code, whether via [source tree][tagbar] or other ways.

Fortunately enough, people have been working hard across the intertubes, and developed wonderful, although some partially-working ways to do just that.

Here's the step-by-step tutorial you've been waiting for:

## Syntax checking

 1. Install [Syntastic Vim plugin][syntastic] - Best syntax-checker around for plenty of languages, plus it integrates with Vim's *location-list* (==*quickfix*) window. I recommend [cloning from the GitHub repo][syntastic-github] and installing using a plugin manager like [Vundle][vundle] or [Pathogen][pathogen], since it's more frequently updated.
 2. Choose one of the two options below:

### Community-driven JSHint

[jshint.com][jshint] is a community-driven fork of [jslint][jslint], developed by Javascript Guru/Mahatma Douglas Crockford. It is frequently updated and works great.

 1. Install *node.js* using your favorite package manager.
 2. Install *Node Package Manager*: 'curl https://npmjs.org/install.sh | sh'
    - See [http://npmjs.org][npm] for more info.
 3. Install *jshint* globally: 'npm install jshint -g'
 4. Put your jshint *config* file in your *$HOME* dir: '~/.jshintrc'. [Here's JSHint-Node's example configuration file][jshint-config], they pulled from mine and added more stuff. [Here's my original copy][my-config], which you can also start from.

### JSLint

JSLint is a pretty famous project across javascript developers. JSHint was forked from this project (I think).

 1. The steps are the same, except you need to insteall the `jsl` package instead of `jshint`.

*For more info check this question on [StackOverflow][stack-syntax] for the discussion regarding the above solutions.*

## Source code browsing

This is a more complicated matter.

### DoctorJS

There was a project by Mozilla called *DoctorJS*, formerly called *jsctags*, which is [now abandoned][dead]. However, it's still in working shape, and you can [check the repo's issues page][issues] for some bandaging. Here's how to install it:

  1. Install the `exuberant-ctags` package, via your OS package manager (brew, apt-get, etc.). Just make sure you install *exuberant-ctags*.
  2. Install node.js.
  3. Clone `DoctorJS` from github: git clone https://github.com/mozilla/doctorjs.git
  4. Go inside `DoctorJS` dir and `make install` (You'll also need to use `make` to install). There might be problems with installing the program, as it looks like `make install` doesn't do the trick for the moment. For now I just add the repo's `bin/` dir to my $PATH instead. See [DoctorJS's GitHub and issues pages][issues] for more info.
  5. Install the [TagBar Vim plugin][tagbar] (It's TagBar, not the old infamous TagList!).

### Tern.js

There's a new promising project called [tern.js][tern]. It's currently in early beta, and should eventually replace it. The developer is working on [integrating it with ctags, thus with tagbar and vim][tern-vim]. Stay tuned using the attached links.

The next and final step is probably called PROFIT. Enjoy!


  [syntastic]: http://www.vim.org/scripts/script.php?script_id=2736
  [syntastic-github]: https://github.com/scrooloose/syntastic/
  [vundle]: https://github.com/gmarik/vundle
  [pathogen]: http://www.vim.org/scripts/script.php?script_id=2332
  [jshint]: http://jshint.com
  [npm]: http://npmjs.org
  [my-config]: https://github.com/oryband/dotfiles/blob/master/jshintrc
  [jshint-config]: https://github.com/jshint/jshint/blob/master/examples/.jshintrc
  [tagbar]: http://majutsushi.github.io/tagbar/
  [jslint]: http://www.jslint.com/
  [dead]: https://groups.google.com/forum/?fromgroups=#!topic/js-tools/tZ-1jDYxGZk
  [issues]: https://github.com/mozilla/doctorjs/issues
  [stack-syntax]: http://stackoverflow.com/questions/473478/vim-jslint/5893447#5893447
  [stack-source]: http://stackoverflow.com/questions/4777366/recommended-vim-plugins-for-javascript-coding/5893600#5893600
  [tern]: http://ternjs.net/
  [tern-vim]: https://github.com/marijnh/tern_for_vim
