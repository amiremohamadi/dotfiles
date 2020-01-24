
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

" plugins configurations

" vim move configuration
let g:move_map_keys = 0
map <Esc>[1;3A <Plug>MoveLineUp
map <Esc>[1;3B <Plug>MoveLineDown

" tmux navigator configuration
let g:tmux_navigator_no_mappings = 1
map<Esc>[1;6D :TmuxNavigateLeft<cr>
map<Esc>[1;6C :TmuxNavigateRight<cr>
map<Esc>[1;6A :TmuxNavigateUp<cr>
map<Esc>[1;6B :TmuxNavigateDown<cr>
" run python inside vim
nnoremap <buffer> <F9> :exec '!python' shellescape(@%, 1)<cr>

" indent back using Shift+Tab (both insert mode and command mode)
nnoremap <S-Tab> <<
inoremap <S-Tab> <C-d>

