rummage.vim
============

One version of a grepping interface for Vim

Features
--------

- Search in the background (using `system()`--don't send vim to the background first)
- Automatically open the quickfix window
- Don't autojump to the first match (configurable)
- Concise syntax for filtering on filetypes and directories
- Use Perl-like delimiters for regexes, quotes for literal string searches
- Always ignore binary files
- Supports vim-grep, ag, ripgrep, and ack

Usage
-----

```viml
:Rummage "some literal string"
:Rummage /some regex/
:Rummage /some case in-sensitive regex/i
:Rummage "limit to some file types" rb,rake,js,css
:Rummage "search in path patterns" *_spec.rb
:Rummage "ignore ruby files and the db/ directory" -rb -db/
:Rummage "any file type in the app/ and lib/ directories" * app/,lib/
:Rummage! "don't respect CVS ignore files"
          " The `!` is not needed when outside of a source controlled repo
:Rummage  " Open the quickfix window with last search results
:Rummage! " Return to the last file you were editing before rummaging 
```
