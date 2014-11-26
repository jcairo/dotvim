filetype off
execute pathogen#infect()
execute pathogen#helptags()

" Auto reload files when changed
set autoread

set showcmd " show commands botom right
set hlsearch " highlight search matches
set incsearch "search as chars are entered
" turn off highlighted search text
nnoremap <leader><space> :nohlsearch<CR>

" autocompletion
"filetype plugin on
"set omnifunc=syntaxcomplete#Complete

" Ctrlp settings
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlPLastMode'
let g:ctrlp_extensions = ['buffertag', 'tag', 'line', 'dir']

" show buffers using ariline as tabs
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = ' '
let g:airline_theme = 'dark'
"
" set easy motion leader
let g:EasyMotion_leader_key = '<Leader>'

" set folding options
set foldmethod=indent
set foldnestmax=2
set foldlevel=99
filetype plugin indent on

" Set case insensitive search
:set ignorecase
:set smartcase

syntax on
syntax enable

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

"Set the color scheme
let g:solarized_termcolors=256
colorscheme molokai "default
set background="dark"
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
" if ! has('gui_running')
"     set ttimeoutlen=10
"     augroup FastEscape
"         autocmd!
"         au InsertEnter * set timeoutlen=0
"         au InsertLeave * set timeoutlen=1000
"     augroup END
" endif

" Hide the standard display information
set noshowmode

" Remap vim split switching to ctrl+j/k/l/h
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Cycle through open buffers
:nnoremap <C-l> :bnext<CR>
:nnoremap <C-h> :bprevious<CR>
" Open splits right and below
set splitbelow
set splitright
