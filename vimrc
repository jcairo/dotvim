"Enable pathogen plugin
execute pathogen#infect()
execute pathogen#helptags()

"Pymode settings
" let g:pymode = 1
" let g:pymode_python = 'python3'

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

"Set the color scheme
let g:solarized_termcolors=256
colorscheme molokai "default
set background="dark"
"autocmd! BufEnter,BufNewFile *.markdown colo solarized "theme in markdown
"autocmd! BufLeave *.markdown colo molokai

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

"set colorscheme and term color on file changes
autocmd FileType asm colorscheme solarized
autocmd FileType asm :silent !echo -e "\033]Phd6d2a1\033\\"

autocmd FileType python colorscheme molokai
autocmd FileType python :silent !echo -e "\033]Ph000000\033\\"

autocmd FileType markdown colorscheme markdowntheme
autocmd FileType markdown :silent !echo -e "\033]PhFFFFFF\033\\"

"set terminal background to original color on exit
autocmd VimLeave * :silent !echo -e "\033]Phfdf6e3\033\\"

" Set folds to be saved
autocmd BufWinLeave ?* mkview
autocmd BufWinEnter ?* silent loadview
