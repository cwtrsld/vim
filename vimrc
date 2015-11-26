" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %

" Pathogen Autoloader
execute pathogen#infect()
execute pathogen#helptags()

" Compile files with F9 and F10
nmap <F9> :SCCompile<cr> 
nmap <F10> :SCCompileRun<cr> 

" Use cppman for manpages
autocmd FileType cpp set keywordprg=cppman

" Theme Settings
filetype off
filetype plugin indent on
syntax on
syntax enable
set background=dark
colorscheme solarized

" Better copy & paste
set pastetoggle=<F2>
set clipboard=unnamed
    
" Mouse and backspace
set mouse=a  " on OSX press ALT and click
set bs=2     " make backspace behave like normal again

" Rebind <Leader> key
let mapleader = ","

" Exit insert mode
inoremap jj <esc>
inoremap jj <esc>

" Quick quit command
noremap <Leader>e :quit<CR>  " Quit current window
noremap <Leader>E :qa!<CR>   " Quit all windows

" Window (split) movement commands
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" Tab movement commands
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>

" Moving of code blocks
vnoremap < <gv  " better indentation
vnoremap > >gv  " better indentation

" Show line numbers and length
set number  " show line numbers
set tw=79   " width of document (used by gd)
set nowrap  " don't automatically wrap on load
set fo-=t   " don't automatically wrap text when typing
set colorcolumn=80
highlight ColorColumn ctermbg=233

" History Settings
set history=700
set undolevels=700

" Tab Settings
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab

" Search Settings
set hlsearch
set incsearch
set ignorecase
set smartcase

" vim-powerline Settings
set laststatus=2

" NERDTree Settings
map <C-n> :NERDTreeToggle<CR>

" Open the split at the right side
set splitright
set splitbelow

" Open help files in the right vertical split
cnoremap help vert help

" vim-sessions Settings
:let g:session_autosave = 'yes'
:let g:session_autoload = 'yes'

" YouCompleteMe  Settings
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
