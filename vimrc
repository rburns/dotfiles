"" General
" set hidden				" lusty told me to do it
set number				" Show line numbers
set linebreak			" Break lines at word (requires Wrap lines)
set textwidth=100		" Line wrap (number of cols)
set colorcolumn=101     " right hand margin
set showmatch			" Highlight matching brace
set visualbell			" Use visual bell (no beeping)

set hlsearch			" Highlight all search results
set smartcase			" Enable smart-case search
set incsearch			" Searches for strings incrementally

set autoindent			" Auto-indent new lines
set shiftwidth=4		" Number of auto-indent spaces
set smartindent			" Enable smart-indent
set smarttab			" Enable smart-tabs
set softtabstop=4		" Number of spaces per Tab
set tabstop=4			" for legacy files?
set expandtab           " insert spaces for tabs

let mapleader = ";"     " '/' seems terrible

set laststatus=2        " always show status line

"" kojiki indentation
autocmd BufReadPre */kojiki_umbrella/* setlocal ts=2 sw=2 expandtab

"" ruby indentation
autocmd Filetype ruby setlocal ts=2 sw=2 expandtab

"" yaml indendation
autocmd Filetype yaml setlocal ts=2 sw=2 expandtab

"" github flavored markdown
augroup markdown
    au!
    au BufNewFile,BufRead *.md,*.markdown setlocal filetype=ghmarkdown
augroup END

"" buffer navigation
map <leader>n :bn<cr>
map <leader>p :bp<cr>
map <leader>d :bp<cr>

"" Advanced
set ruler				" Show row and column ruler information

set undolevels=1000		" Number of undo levels
set backspace=indent,eol,start	" Backspace behaviour

"" Files
set backupdir=~/.vim/_backup// " where to put backup files.
set directory=~/.vim/_temp// " where to put swap files.

"" Pathogen
execute pathogen#infect()
syntax on
filetype plugin indent on

"" Solarized
syntax enable
set background=dark
set t_Co=16
let g:solarized_termcolors=16
colorscheme solarized

"" CtrlP
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_root_markers=['.git', '.proot']
set wildignore+=*/node_modules/*
set wildignore+=*/out/*
set wildignore+=*/test_out/*
set wildignore+=*/target/*
set wildignore+=*/resources/public/js/*
set wildignore+=*/resources/test/js/*

"" Fireplace
nnoremap <C-e> :Eval<CR>
nnoremap <leader>fe :%Eval<CR>

"" UltiSnips
let g:UltiSnipsListSnippets="<c-l>"
let g:UltiSnipsSnippetDirectories =["UltiSnips", "bundle/vim-snippets/UltiSnips"]

"" Tslime
vmap <C-c><C-c> <Plug>SendSelectionToTmux
nmap <C-c><C-c> <Plug>NormalModeSendToTmux
nmap <C-c>r <Plug>SetTmuxVars

"" Syntastic
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0

" let g:syntastic_javascript_checkers = ['eslint']
