syntax on

" file types
filetype indent on

" environment
set background=dark
set hlsearch

" indentation
set autoindent
set smartindent
set cindent
set tabstop=4
set shiftwidth=4

" highlight extra white spaces
hi ExtraWhitespace ctermbg=LightMagenta guibg=LightMagenta
autocmd Syntax * syn match ExtraWhiteSpace /[ \t]\+$/ containedin=ALL

" remaps
""" search highlight toggle
nmap <F3> :set hlsearch! hlsearch?<CR>
imap <F3> <ESC><F3>a

""" add 'slashed line' over current line
nmap <F4> O/<ESC>yl99pj0
imap <F4> <ESC><F4>I

""" remove spaces/tab at end of line
nmap <F5> :%s/[ \t]\+$//g<CR>
imap <F5> <ESC><F6>A

""" plugins
call plug#begin('~/.vim/plugged')

""" buffers
nmap gn :bn<CR>
nmap gp :bp<CR>
nmap db :bd<CR>

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'dart-lang/dart-vim-plugin'

call plug#end()

let g:airline#extensions#tabline#enabled=1
let g:airline_theme='wombat'

let dart_html_in_string=v:true
let g:dart_style_guide=2
