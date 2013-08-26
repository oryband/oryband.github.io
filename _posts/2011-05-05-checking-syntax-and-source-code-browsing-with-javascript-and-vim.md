---
layout: post
title: Checking syntax and source code browsing with Javascript and Vim
---

The best-practice way IMO way is:

 1. Install [Syntastic Vim plugin][1] - Best syntax-checker around for plenty of languages, plus it integrates with Vim's *location-list* (==*quickfix*) window.
   - I recommend [cloning from the GitHub repo][2] and installing using a plugin manager like [Vundle][3] or [Pathogen][4], since it's more frequently updated.
 2. Choose one of the two options below:

JSLint
------------------

 1. Install `jsl` (JSLint executable) using your favorite package manager (Ubuntu's `apt-get`, Mac's [home `brew`][5], etc.).

Community-driven [jshint.com][6] (better than JSLint)
----------------------------------------

 1. Install *node.js* using your favorite package manager.
 2. Install *Node Package Manager*: 'curl https://npmjs.org/install.sh | sh'
    - See [http://npmjs.org][7] for more info.
 3. Install *jshint* globally: 'npm install jshint -g'
 4. Put your jshint *config* file in your *$HOME* dir: '~/.jshintrc'
    - [Here's JSHint-Node's example configuration file][12], they pulled from mine and added more stuff.
    - [Here's my original copy, which you can also start from][8].
 4. Overwrite *Syntastic*'s `syntax_checkers/javascript.vim` file with [this one][9] - **EDIT: NO LONGER NECESSARY WITH NEWEST SYNTASTIC VERSION.**
    - Script [copied][10] from [FactorayLab's really helpful Vim GitHub page][11], which I recommend every Vim user to check out.

Enjoy! :)


  [1]: http://www.vim.org/scripts/script.php?script_id=2736
  [2]: https://github.com/scrooloose/syntastic/
  [3]: https://github.com/gmarik/vundle
  [4]: http://www.vim.org/scripts/script.php?script_id=2332
  [5]: http://mxcl.github.com/homebrew/
  [6]: http://jshint.com
  [7]: http://npmjs.org
  [8]: https://github.com/oryband/dotfiles/blob/master/jshintrc
  [9]: https://github.com/factorylabs/vimfiles/blob/master/home/.vim/syntax_checkers/javascript.vim
  [10]: https://github.com/factorylabs/vimfiles/blob/master/home/.vim/syntax_checkers/javascript.vim
  [11]: https://github.com/factorylabs/vimfiles/
  [12]: https://github.com/jshint/jshint/blob/master/examples/.jshintrc
