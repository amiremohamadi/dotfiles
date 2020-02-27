
" oh-my-vim
" Change the default leader
" let mapleader = ","

" Skip upgrade of oh-my-vim itself during upgrades
" let g:ohmyvim_skip_upgrade=1

" Use :OhMyVim profiles to list all available profiles with a description
" let profiles = ['defaults', 'django', 'erl', 'friendpaste', 'git', 'makefile', 'map', 'pyramid', 'python', 'ranger', 'tmpl', 'utf8']
let profiles = ['defaults']

" Path to oh-my-vim binary (take care of it if you are using a virtualenv)
let g:ohmyvim="/home/amir/.oh-my-vim/bin/oh-my-vim"

" load oh-my-vim
source /home/amir/.vim/ohmyvim/ohmyvim.vim


" let plug manage plugins
call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'} " auto completion
Plug 'jiangmiao/auto-pairs'
Plug 'christoomey/vim-tmux-navigator'
Plug 'matze/vim-move'
Plug 'preservim/nerdtree'
Plug 'tomasiser/vim-code-dark'
Plug 'sickill/vim-monokai'
Plug 'bluz71/vim-moonfly-colors'
Plug 'morhetz/gruvbox'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'srcery-colors/srcery-vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'hdima/python-syntax'
Plug 'tpope/vim-commentary'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'craigemery/vim-autotag'
Plug 'airblade/vim-gitgutter'
Plug 'enricobacis/paste.vim'

Plug 'wincent/terminus'

Plug 'Shougo/deoplete.nvim'
Plug 'padawan-php/deoplete-padawan'

call plug#end()

set nocompatible
syntax on
set ruler
set number
set showcmd
set incsearch
set hlsearch
set backspace=indent,eol,start
set expandtab
set softtabstop=4
set shiftwidth=4
set mouse=a
set colorcolumn=80

" plugins configurations
" set theme style
" colorscheme codedark
colorscheme gruvbox
set bg=dark

" vim move configuration
" let g:move_map_keys = 0
" map <Esc>[1;3A <Plug>MoveLineUp
" map <Esc>[1;3B <Plug>MoveLineDown

" tmux navigator configuration
let g:tmux_navigator_no_mappings = 1
map<Esc>[1;6D :TmuxNavigateLeft<cr>
map<Esc>[1;6C :TmuxNavigateRight<cr>
map<Esc>[1;6A :TmuxNavigateUp<cr>
map<Esc>[1;6B :TmuxNavigateDown<cr>
" run python inside vim
let dir=expand('%:p:h') 
let name=expand('%:t') . '.vimconfig' 
let fullname=dir . '/' . name
nnoremap <buffer> <F9> :exec '!sh' fullname<cr>

" indent back using Shift+Tab (both insert mode and command mode)
nnoremap <S-Tab> <<
inoremap <S-Tab> <C-d>

" vim coc (completion) use tab beside of arrow keys
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"

" NERDTree toggleing
nmap <C-b> :NERDTreeToggle<CR>

" multiple cursors vim configuration
let g:multi_cursor_use_default_mapping=0

" Default mapping
let g:multi_cursor_start_word_key      = '<C-d>'
let g:multi_cursor_next_key            = '<C-d>'
let g:multi_cursor_quit_key            = '<C-x>'

" tab mangaement
nnoremap <C-]> :tabnext<CR>
nnoremap <C-t> :tabnew<CR>

" file close
nnoremap <C-w> :tabclose<CR>

" commentary configuration
nmap <C-_> :Commentary<CR>
inoremap <C-_> :Commentary<CR>

" auto tags configuration
let g:autotagmaxTagsFileSize = 12000
let g:autotagTagsFile        = 'tags'

" vim arrow keys + ctrl combination for scrolling
map <esc>[1;5A <C-y>
map <esc>[1;5B <C-e>

" vim ctrl-z undo and ctrl-y redo
" nnoremap <C-Z> u
" nnoremap <C-Y> <C-R>

" vim paste from clipboard
let g:paste_no_mappings = 1
nnoremap <C-v> :Paste<CR>
vnoremap <C-c> :Copy<CR>

" messed up tmux with vim
if &term =~ '^screen'
    " tmux will send xterm-style keys when its xterm-keys option is on
    execute "set <xUp>=\e[1;*A"
    execute "set <xDown>=\e[1;*B"
    execute "set <xRight>=\e[1;*C"
    execute "set <xLeft>=\e[1;*D"
endif
