"=============================================================================
" svelte.vim --- svelte Layer file for SpaceVim
" Copyright (c) 2012-2016 Shidong Wang & Contributors
" Author: Goran Mekić < meka at tilda.center >
" URL: https://spacevim.org
" License: GPLv3
"=============================================================================

""
" @section svelte, layer-svelte
" @parentsection layers
" This is the doc for this layer:
"
" @subsection Key Bindings
" >
"   Mode      Key           Function
"   -------------------------------------------------------------
"   normal    <leader>jA    generate accessors
"   normal    <leader>js    generate setter accessor
" <
" @subsection Layer options
" >
"   Name              Description                      Default
"   -------------------------------------------------------------
"   option1       Set option1 for svelte layer               ''
"   option2       Set option2 for svelte layer               []
"   option3       Set option3 for svelte layer               {}
" <
" @subsection Global options
" >
"   Name              Description                      Default
"   -------------------------------------------------------------
"   g:pluginA_opt1    Set opt1 for plugin A               ''
"   g:pluginB_opt2    Set opt2 for plugin B               []
" <

function! SpaceVim#layers#lang#svelte#plugins() abort
  let plugins = []
  call add(plugins, ['sheerun/vim-polyglot' , {'on_ft' : 'svelte'}])
  call add(plugins, ['evanleck/vim-svelte' , {'on_ft' : 'svelte'}])
  return plugins
endfunction


function! SpaceVim#layers#lang#svelte#config() abort
  " let g:svelte_option1 = get(g:, 'svelte_option1', 1)
endfunction

" add layer options:
let s:svelte_indent_style = 1
let s:svelte_preprocessors = ['typescript']
" let s:polyglot_disabled = ['ftdetect']
function! SpaceVim#layers#lang#svelte#set_variable(var) abort
  let s:svelte_indent_style = get(a:var, 'svelte_indent_style', s:svelte_indent_style)
  let s:svelte_preprocessors = get(a:var, 'svelte_preprocessors', s:svelte_preprocessors)
  " let s:polyglot_disabled = get(a:var, 'polyglot_disabled', s:polyglot_disabled)
endfunction

" completion function for layer options:
function! SpaceVim#layers#lang#svelte#get_options() abort
    return ['svelte_indent_style', 'svelte_preprocessors']
endfunction
