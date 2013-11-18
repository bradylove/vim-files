colorscheme flatland

set gfn=Source\ Code\ Pro\ Medium\ 09

"Automatically resize splits when resizing window
autocmd VimResized * wincmd =

set guioptions-=T
set guioptions-=r
set guioptions-=L

if has("unix")
  " copy and paste
  vmap <C-c> "+yi
  vmap <C-x> "+c
  vmap <C-v> c<ESC>"+p
  imap <C-v> <ESC>"+pa
endif
