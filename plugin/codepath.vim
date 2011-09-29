" ============================================================================
" File:        codepath.vim
" Description: This plugin provides a function to get a root project
"              directory based on a given directory.
"              It has other features, see
"              https://github.com/lucapette/codepath.vim.
"
" Maintainer:  Luca Pette <lucapette@gmail.com>
" Last Change: 02 May, 2011
" License:     This program is free software. It comes without any warranty,
"              to the extent permitted by applicable law. You can redistribute
"              it and/or modify it under the terms of the Do What The Fuck You
"              Want To Public License, Version 2, as published by Sam Hocevar.
"              See http://sam.zoy.org/wtfpl/COPYING for more details.
"
" ============================================================================

if exists("loaded_codepath")
    finish
endif

if !exists("g:codepath")
    let g:codepath = $HOME."/code"
endif

let loaded_codepath = 1

function! codepath#path()
  let current_dir = getcwd()
  if match(current_dir, g:codepath) >= 0
    return g:codepath.'/'.split(current_dir,'/')[len(split(g:codepath, "/"))]
  else
    return current_dir
  endif
endfunction
