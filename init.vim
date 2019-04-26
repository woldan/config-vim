let g:python3_host_prog = '/usr/local/bin/python3'

let g:airline_theme = "solarized"
let g:airline#extensions#ale#enabled = 1

"CtrlP fzf and friends
set rtp+=/usr/local/opt/fzf
let g:fzf_nvim_statusline = 1
nnoremap <c-p> :FZF<CR>
let g:fzf_history_dir = '~/.fzf-history'

"let g:UltiSnipsUsePythonVersion = 3
let g:UltiSnipsExpandTrigger="<c-k>"
let g:UltiSnipsJumpForwardTrigger="<c-k>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

" Completion engine
"let g:ycm_collect_identifiers_from_comments_and_strings = 1
"let g:ycm_complete_in_comments = 1
let g:deoplete#enable_at_startup = 1

let g:go_fmt_command = "goimports"
let g:go_term_mode = "split"
let g:go_list_type = 'quickfix'
let g:go_build_tags = 'smoke slow'
let g:go_def_mode = 'guru' "until guru becomes reasonable fast

let dart_style_guide = 2
let dart_format_on_save = 1

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
Plug 'w0rp/ale'
Plug 'reisub0/hot-reload.vim'
Plug 'dart-lang/dart-vim-plugin'
" - edit
Plug 'godlygeek/tabular'
Plug 'andrewradev/splitjoin.vim'
" - search
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'gabesoft/vim-ags'
Plug 'rking/ag.vim'
Plug 'rizzatti/dash.vim'
Plug 'mattn/vim-fz'
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

call deoplete#custom#option('omni_patterns', { 'go': '[^. *\t]\.\w*' })

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

set undofile

set ignorecase
set smartcase
set hlsearch

set completeopt-=preview

:nmap <silent> <F1> <Plug>Dash
