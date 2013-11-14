execute pathogen#infect()

" indentation and formatting
set autoindent
set cindent
set tabstop=4
set shiftwidth=4
set expandtab
set textwidth=0
filetype plugin indent on

" utils
set nu
set hlsearch
syntax on

" split variables
set splitright
set splitbelow

let mapleader = ","
call arpeggio#map('in', '', 0, 'ij', '<Esc>')
call arpeggio#map('in', '', 0, 'fj', '<Esc>:w<CR>')
call arpeggio#map('in', '', 0, 'jq', '<Esc>:q<CR>')
call arpeggio#map('in', '', 0, 'sp', '<Esc>:set paste<CR>i')
call arpeggio#map('in', '', 0, 'np', '<Esc>:set nopaste<CR>')

" style
set laststatus=2

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
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_fugitive_prefix='⎇  '
let g:airline_theme = 'solarized'

" for writing in zen mode 
let g:vimroom_sidebar_height=0
let g:vimroom_width=120
