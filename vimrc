"Enable pathogen plugin
execute pathogen#infect()
execute pathogen#helptags()

"Pymode settings
let g:pymode = 1
let g:pymode_python = 'python3'

"Nerd Tree shortcut to open with crtl-n
nnoremap <C-n> :NERDTreeToggle<CR>

"Enable line numbering
set number 
set ai

"Enable syntax highlighting
syntax enable

"Map escape key to jj 
imap jj <esc>

"Show white space chars type backslash l to invoke
"Colors of the space chars are in the NonText and SpecialKey elements in 
".vimrc
set list
nmap <leader>l :set list!<CR>
set listchars=tab:▸\ ,eol:¬

"Set default yank/paste register to the system register
set clipboard=unnamed

let g:solarized_termcolors=256
colorscheme molokai
set background="dark"

"Unmap arrow keys
no <down> <Nop>
no <left> <Nop>
no <right> <Nop>
no <up> <Nop>

ino <down> <Nop>
ino <left> <Nop>
ino <right> <Nop>
ino <up> <Nop>

set expandtab
set softtabstop=4
set shiftwidth=4
