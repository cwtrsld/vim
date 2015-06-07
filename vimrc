" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %

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

" Quicksave command
noremap <C-Y> :update<CR> 
vnoremap <C-Y> <C-C>:update<CR> 
inoremap <C-Y> <ESC>:update<CR>

" Exit insert mode
inoremap jj <esc>
inoremap jj <esc>

" Quick quit command
noremap <Leader>e :quit<CR>  " Quit current window
noremap <Leader>E :qa!<CR>   " Quit all windows

" Window movement commands
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" Tab movement commands
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>

" Map sort function
vnoremap <Leader>s :sort<CR>

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

" ctrlp settings
let g:ctrlp_max_height = 30
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=*/coverage/*

" python-mode settings
let ropevim_enable_shortcuts = 1
let g:pymode_rope_goto_definition_bind = "<Leader>g"
let g:pymode_rope_goto_definition_cmd = "vnew"
let g:pymode_rope_extended_complete = 1
let g:pymode_breakpoint = 0
let g:pymode_syntax = 1
let g:pymode_syntax_builtin_objs = 0
let g:pymode_syntax_builtin_funcs = 0
map <Leader>b Oimport ipdb; ipdb.set_trace() # BREAKPOINT<C-c>

" Navigation through omnicomplete option list
set completeopt=longest,menuone
function! OmniPopup(action)
    if pumvisible()
        if a:action = 'j'
            return "\<C-N>"
        elseif a:action == 'k'
            return "\<C-P>"
        endif
    endif
    return a:action
endfunction

inoremap <silent><C-j> <C-R>=OmniPopup('j')<CR>
inoremap <silent><C-k> <C-R>=OmniPopup('k')<CR>

" Python folding
set nofoldenable
