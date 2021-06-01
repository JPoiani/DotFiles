"------------------------------------------------------------------------------
" Features
"------------------------------------------------------------------------------
set nocompatible            " Disable vi compatibility

filetype on                 " filetype must be 'on' before setting it 'off'
                            "   otherwise it exits with a bad status and breaks
                            "   git commit.
filetype off                " force reloading *after* pathogen loaded

syntax on " Syntax

"------------------------------------------------------------------------------
" Pathogen settings
"------------------------------------------------------------------------------
execute pathogen#infect()
filetype plugin indent on

"------------------------------------------------------------------------------
" Must have options
"------------------------------------------------------------------------------
set colorcolumn=80
set hidden
set wildmenu
set showcmd
set showmode " console settings
set confirm
set visualbell
set list
set listchars=tab:>-
set title

"------------------------------------------------------------------------------
" General settings
"------------------------------------------------------------------------------
" " Solarized Light Theme
" set background=light
" let g:solarized_termcolors=256
" colorscheme solarized
set background=dark
colorscheme gruvbox

" Indent settings
set expandtab
set tabstop=4 " tab settings
set softtabstop=4
set shiftwidth=4
set shiftround
set autoindent
set cindent

" Search settings
set hlsearch
set ignorecase
set smartcase
set nostartofline

" General
set showmatch

set number relativenumber " Numbering
set ruler

set wrap " wrap long lines to next row
set linebreak " don't break words

set ttyfast " fast scrolling


"------------------------------------------------------------------------------
" Plugin Settings
"------------------------------------------------------------------------------
nmap <F1> :NERDTreeToggle<CR> " Nerdtree toggle
nnoremap <C-t> :SyntasticToggleMode<CR>

let g:ctrlp_map = '<c-p>' " CtrlP toggle
let g:ctrlp_cmd = 'CtrlP'

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_ruby_exec = '~/usr/bin/ruby'
let g:syntastic_mode_map = {'mode': 'active',
                            \ 'passive_filetypes': ['assembly'] }
"------------------------------------------------------------------------------
"------------------------------------------------------------------------------


"------------------------------------------------------------------------------
" Trailing Whitespaces
"------------------------------------------------------------------------------
" Trailing whitespace and tabs are forbidden, so highlight them.
highlight ForbiddenWhitespace ctermbg=red guibg=red
match ForbiddenWhitespace /\s\+$\|\t/

"Remove all trailing whitespace by pressing F2
nnoremap <F2> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

" Do not highlight spaces at the end of line while typing on that line.
autocmd InsertEnter * match ForbiddenWhitespace /\t\|\s\+\%#\@<!$/


" Trailing whitespace and tabs are forbidden, so highlight them.
highlight ForbiddenWhitespace ctermbg=red guibg=red
match ForbiddenWhitespace /\s\+$\|\t/
" Do not highlight spaces at the end of line while typing on that line.
autocmd InsertEnter * match ForbiddenWhitespace /\t\|\s\+\%#\@<!$/

"------------------------------------------------------------------------------
" Notes~
"------------------------------------------------------------------------------

" Because I'm lazy, ill be putting a note here of some of the plugin shortcuts
" - ctrlP = Control+P (duh), control V or s will do a vertical split
" - nerdtree = F1, s for vert split, ctrl ww for switching pane
" - ctrl-t disables syntastic
"
