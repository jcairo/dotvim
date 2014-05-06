"Enable pathogen plugin
filetype off
execute pathogen#infect()
execute pathogen#helptags()

" Tagbar shortcut
nmap <F8> :TagbarToggle<CR>

set hlsearch " highlight search matches
set incsearch "search as chars are entered
" turn off highlighted search text
nnoremap <leader><space> :nohlsearch<CR>

" set folding options
set foldmethod=syntax
set foldmethod=indent
set foldnestmax=2
set foldlevel=99
filetype plugin indent on

syntax on
syntax enable

syntax enable
set background=light
colorscheme solarized

"Pymode settings
"let g:pymode_options = 0
"let g:pymode_lint_cwindow = 0
"let g:pymode_rope_completion = 0
"let g:pymode_python = 'disable'

set completeopt-=preview

" so powerline symbols like correct
set encoding=utf-8

"Nerd Tree shortcut to open with crtl-n
nnoremap <C-n> :NERDTreeToggle<CR>

"Enable line numbering
set number 
set ai

"Show white space chars type backslash l to invoke
"Colors of the space chars are in the NonText and SpecialKey elements in 
".vimrc
set list
nmap <leader>l :set list!<CR>
set listchars=tab:▸\ ,eol:¬

"Set default yank/paste register to the system register
" ensure tmux doesn't use unnamed clipboard
" if it does it won't allow yanks when using tmux
if $TMUX == ''
    set clipboard=unnamed
endif
"
"autocmd! BufEnter,BufNewFile *.markdown colo solarized "theme in markdown
"autocmd! BufLeave *.markdown colo molokai

"Show the filename of the current file at the bottom of the window
set modeline
set ls=2

set expandtab
set softtabstop=4
set shiftwidth=4

"set colorscheme and term color on file changes
"autocmd FileType asm colorscheme solarized
"autocmd FileType asm :silent !echo -e "\033]Phd6d2a1\033\\"

"autocmd FileType python colorscheme molokai
"autocmd FileType python :silent !echo -e "\033]Ph000000\033\\"

"autocmd FileType markdown colorscheme markdowntheme
"autocmd FileType markdown :silent !echo -e "\033]PhFFFFFF\033\\"

"set terminal background to original color on exit
"autocmd VimLeave * :silent !echo -e "\033]Ph000000\033\\"

" Set folds to be saved
autocmd BufWinLeave ?* mkview
autocmd BufWinEnter ?* silent loadview

" Powerline stuff
python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup

let g:Powerline_symbols = 'fancy'
set guifont=Droid\ Sans\ Mono\ for\ Powerline:h12
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set termencoding=utf-8

" Leave insert mode immediately no delay
if ! has('gui_running')
    set ttimeoutlen=10
    augroup FastEscape
        autocmd!
        au InsertEnter * set timeoutlen=0
        au InsertLeave * set timeoutlen=1000
    augroup END
endif

" Hide the standard display information
set noshowmode

" Source explorer stuff
nmap <F10> :SrcExplToggle<CR>
let g:SerExpl_pluginList = [
    \ "__Tag_List__",
    \ "_NERT_tree_",
    \ "[BufExplorer]",
    \ ]

