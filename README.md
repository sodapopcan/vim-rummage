rummage.vim
============

My take on a grepping interface

Features
--------

- Search in the background (using `system()`--don't send vim to the background first)
- Automatically open the quickfix window
- Don't autojump to the first match
- Concise syntax for filtering on filetypes and directories
- Use Perl-like delimiters for regexes, quotes for literal string searches
- Always ignore binary files
- Supports vim-grep, ag, ripgrep, and ack

Usage
-----

```viml
:Rummage "some literal string"
:Rummage some_literal_token
:Rummage /some regex/
:Rummage /some case in-sensitive regex/i
:Rummage "some case in-sensitive literal string"i
:Rummage "limit to some file types" ruby,javascript,python
:Rummage "search in path patterns" *_spec.rb
:Rummage "any file type in the app/ and lib/ directories" * app/,lib/ " Supports completion of dirs
:Rummage! "don't respect ignore files"
          " The `!` is not needed when outside of a source controlled repo
:.Rummage " search the `word` under the cursor—-also works with a !
:Rummage  " Repopulate the quickfix window with the last result without re-performing the search
:Rummage! " Return to the last file you were editing before rummaging 
```
