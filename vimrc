" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %

" Compile a C++ file with F5
nnoremap <F5> :<C-U>make %:r && ./%:r<CR>

" Use cppman for manpages
autocmd FileType cpp set keywordprg=cppman

" Pathogen Autoloader
execute pathogen#infect()
execute pathogen#helptags()

" Theme settings
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

" History settings
set history=700
set undolevels=700

" Tab settings
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab

" Search settings
set hlsearch
set incsearch
set ignorecase
set smartcase

" vim-powerline settings
set laststatus=2

" NERDTree settings
map <C-n> :NERDTreeToggle<CR>

" Open the split at the right side
set splitright
set splitbelow

" Open help files in the right vertical split
cnoremap help vert help

" vim-sessions settings
:let g:session_autosave = 'yes'
:let g:session_autoload = 'yes'

" clang_complete Settings
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
