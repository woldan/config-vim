let g:python_host_prog = '/usr/local/bin/python2'

let g:airline_theme = "solarized"
let g:solarized_termcolors = 16

"CtrlP fzf and friends
set rtp+=/usr/local/opt/fzf
let g:fzf_nvim_statusline = 1
nnoremap <c-t> :FZF<CR>
let g:fzf_history_dir = '~/.fzf-history'

let g:UltiSnipsUsePythonVersion = 3
let g:UltiSnipsExpandTrigger="<c-k>"
let g:UltiSnipsJumpForwardTrigger="<c-k>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
let g:syntastic_mode_map = { "mode": "active", "passive_filetypes": ["go"] }

" Completion engine
"let g:ycm_collect_identifiers_from_comments_and_strings = 1
"let g:ycm_complete_in_comments = 1
let g:deoplete#enable_at_startup = 1

let g:go_fmt_command = "goimports"
let g:go_auto_type_info = 0
let g:go_term_mode = "split"
"let g:go_term_enabled = 1
let g:go_list_type = 'quickfix'

"source ~/.vim/bundle/vim-pathogen/autoload/pathogen.vim
"execute pathogen#infect()
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
call plug#begin()
" - lang
Plug 'SirVer/ultisnips'
Plug 'fatih/vim-go'
Plug 'tpope/vim-endwise'
Plug 'elixir-lang/vim-elixir'
Plug 'vim-erlang/vim-erlang-omnicomplete'
Plug 'herringtondarkholme/yats.vim'
" - edit
Plug 'godlygeek/tabular'
Plug 'andrewradev/splitjoin.vim'
" - search
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'gabesoft/vim-ags'
Plug 'mileszs/ack.vim'
" - presentation
Plug 'lifepillar/vim-solarized8'
Plug 'altercation/vim-colors-solarized'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" - completion
Plug 'shougo/deoplete.nvim'
" - tools
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'mbbill/undotree'
call plug#end()

syntax enable
filetype plugin indent on
set cursorline
:hi CursorLine cterm=NONE ctermbg=darkblue ctermfg=white guibg=darkblue ctermfg=white
set background=dark
colorscheme solarized

set autoread
set sts=2
set ts=2
set expandtab
set sw=2

set nu

set ignorecase
set smartcase
set hlsearch

set completeopt-=preview

:nmap <silent> <F1> <Plug>DashSearch
