" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %

" Vundle packet manager
" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'Lokaltog/vim-powerline'
Plugin 'kien/ctrlp.vim'
Plugin 'scroolose/nerdcommenter'
Plugin 'scroolose/nerdtree'
Plugin 'altercation/vim-colors-solarized'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-session'

" All of your Plugins must be added before the following line
call vundle#end()  

" Theme settings
filetype off                                                    " Needed for vundle
filetype plugin indent on                                       " Needed for vundle
syntax on                                                       " Enable syntax highlighting
syntax enable                                                   " Enable syntax highlighting
set background=dark                                             " Set background color
colorscheme solarized                                           " Set colorscheme
set number                                                      " Show line numbers
set tw=79                                                       " Width of document (used by gd)
set nowrap                                                      " Don't automatically wrap on load
set fo-=t                                                       " Don't automatically wrap text when typing
set colorcolumn=100                                             " Second color after x signs
highlight ColorColumn ctermbg=233                               " Color after the first colum color
set tabstop=4                                                   " Set the tab stop set
set softtabstop=4                                               " Set the tab stops used in insert mode
set shiftwidth=4                                                " Number of spaces to use for autoindenting
set shiftround                                                  " Use multiple of shiftwidth when indenting with '<' and '>'
set expandtab                                                   " Use tabs instead of spaces
set splitright                                                  " Opens a vertical split on the right
set splitbelow                                                  " Opens a horizontal split below
cnoremap help vert help                                         " Opens the help window vertical
    
" Navigation settings
set mouse=a                                                     " On OSX press ALT and click
set bs=2                                                        " Make backspace great again
let mapleader = ","                                             " Rebind <Leader> key
inoremap jj <esc>                                               " Exit insert mode
noremap <Leader>e :quit<CR>                                     " Quit current window
noremap <Leader>E :qa!<CR>                                      " Quit all windows
map <c-j> <c-w>j                                                " Go to the lower window
map <c-k> <c-w>k                                                " Go to the upper window
map <c-l> <c-w>l                                                " Go to the right window
map <c-h> <c-w>h                                                " Go to the left window
map <Leader>n <esc>:tabprevious<CR>                             " Go to the previous tab
map <Leader>m <esc>:tabnext<CR>                                 " Go to the next tab
vnoremap < <gv                                                  " Better reverse indentation
vnoremap > >gv                                                  " Better indentation
set history=700                                                 " Set how much history is saved
set undolevels=700                                              " Set how much steps you can undo

" Search settings
set hlsearch                                                    " Highlight search pattern
set incsearch                                                   " Improved incremental search
set ignorecase                                                  " Search case insensitive
set smartcase                                                   " Use  case if any caps used

" Plugin settings
set laststatus=2                                                " show vim-powerline last status
map <C-n> :NERDTreeToggle<CR>                                   " toggle nerdtree
