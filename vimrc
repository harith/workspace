runtime bundle/pathogen/autoload/pathogen.vim
execute pathogen#infect()
" set rtp+=~/.workspace-deps/powerline/repo/powerline/bindings/vim

" indentation and formatting
set autoindent
set cindent
set expandtab
set tabstop=4
set shiftwidth=4
set textwidth=0
set backspace=2
set ignorecase
set incsearch
set hlsearch
set splitright
set splitbelow
set nu
set laststatus=2
set scrolloff=1
set showcmd

syntax on
filetype plugin indent on
let mapleader = ";"

let g:EasyMotion_leader_key = '<Leader>a'

" commenting shortcuts
imap <Leader>c <Esc>gc
nmap <Leader>c <Esc>gc
vmap <Leader>c gc
imap <Leader>u <Esc>gcu
nmap <Leader>u <Esc>gcu
vmap <Leader>u gcu

" arpeggio chords
call arpeggio#map('in', '', 0, 'ij', '<Esc>')
call arpeggio#map('in', '', 0, 'fj', '<Esc>:w<CR>')
call arpeggio#map('in', '', 0, 'jq', '<Esc>:q<CR>')


" Show syntax highlighting groups for word under cursor
nmap <C-S-P> :call <SID>SynStack()<CR>
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

" Look and feel
set t_Co=256
set background=dark
let g:solarized_termcolors=256
colorscheme solarized
" hide the ~ when there is no line
hi NonText ctermfg=234
" make the normal text a little brighter
hi Normal ctermfg=250

" for writing in zen mode 
let g:vimroom_sidebar_height=0
let g:vimroom_width=120

" powerline config
set encoding=utf-8
source ~/.workspace-deps/powerline/repo/powerline/bindings/vim/plugin/powerline.vim
