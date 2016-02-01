let g:python_host_prog = '/usr/local/bin/python2'

let g:airline_theme = "solarized"
let g:solarized_termcolors = 16

"CtrlP fzf and friends
set rtp+=/usr/local/opt/fzf
let g:ctrlp_map = '<c-t>'
let g:fzf_nvim_statusline = 0
nnoremap <c-p> :FZF<CR>

let g:UltiSnipsUsePythonVersion = 2
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

let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_complete_in_comments = 1

let g:go_fmt_command = "goimports"
let g:go_auto_type_info = 0
let g:go_term_mode = "split"
let g:go_term_enabled = 1

source ~/.vim/bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()
syntax enable
filetype plugin indent on
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
