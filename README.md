rummage.vim
============

My take on a grepping interface

Features
--------

- Search in the background using `system()`&mdash;don't send vim to the background first
- Automatically open the quickfix window
- Don't autojump to the first match
- Concise syntax for filtering on filetypes and directories
- Use slash delimiters for regexes, quotes for literal string searches
- Always ignore binary files
- Supports `vim-grep`, `ag`, `ripgrep`, `ack`, and regular old `grep`

Usage
-----

```viml
:Rummage some_literal_token
:Rummage "some literal string"
:Rummage "some case in-sensitive literal string"i
:Rummage /some regex/
:Rummage /some case in-sensitive regex/i
:Rummage "limit to some file types" ruby,javascript,python
:Rummage "search in path patterns" *_spec.rb
:Rummage "any file type in the app/ and lib/ directories" * app/,lib/ " Supports completion of dirs
:Rummage "don't respect ignore files"a
          " The `!` is not needed when outside of a source controlled repo
:Rummage! "By-pass rummage and send args straight to the configured program"
:.Rummage " search the `word` under the cursor&mdash;also works with a !
:Rummage  " Repopulate the quickfix window with the last results without re-performing the search
:Rummage! " Return to the last file you were editing before rummaging 
```

Configuration
-------------

Explicitly tell `rummage.vim` about your preferred grepping program:

```viml
let g:rummage_default_program = "git"  " Can be one of 'git', 'rg', 'ag', 'ack', 'grep'
```

Use smart case searching (defaults to the value of `:echo &smartcase`)
```viml
let g:rummage_use_smartcase = 1
```

Installation
------------

Lots of options, but my favourite is [vim-plug](https://github.com/junegunn/vim-plug).

Add the following to your vimrc:

```viml
Plug 'sodapopcan/vim-rummage'
```

Then type:

```viml
:source %
:PlugInstall
```

Why?
----

While I'm generally all for sticking with conventions, `rummage.vim` purposefully breaks conventions established by `:vimgrep` and `:grep`, and that is essentially the entire point.  I would suggest that `rummage.vim` is certainly not for everyone and I'm not interested in heavily promoting it.  It's just here if you find it useful.
