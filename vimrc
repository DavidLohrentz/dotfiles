" Don't include vi compatibility
set nocompatible
" Turn off modelines
set modelines=0

" show line numbers
set number

" turn off beeping on error
set visualbell
set tabstop=4

" show trailing whitespace chars
set list
set listchars=tab:>-,trail:.,extends:#,nbsp:.
colo desert
syntax on
" keybinding Control C yanks to system clipboard
vnoremap <C-c> "+y
" keybinding Control v pastes the system clipboard
map <C-v> "+P
"
" Unmap the arrow keys
no <down> <Nop>
no <left> <Nop>
no <right> <Nop>
no <down> <Nop>

" Unmap the insert mode arros keys
ino <left> <Nop>
ino <right> <Nop>
ino <up> <Nop>
ino <down> <Nop>
"
" vno <left> <Nop>
" vno <right> <Nop>
" vno <up> <Nop>
" vno <up> <Nop>
"
