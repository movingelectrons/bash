execute pathogen#infect()
syntax on
filetype plugin indent on
colorscheme elflord

if has("gui_running")
  set lines=39 columns=100
  winpos 800 0
endif

set visualbell
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set number
set whichwrap+=<,>,h,l,[,]
set encoding=utf-8

au BufRead,BufNewFile *.ino setfiletype c

vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <ESC>"+pa
nmap <C-s> :w<CR>
imap <C-s> <Esc>:w<CR>a
nmap <F2> :TagbarToggle<CR>
nmap <F3> :NERDTree<CR>
nmap <F7> mzgg=G`z`
nmap <F10> :below term

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Window Navigation with Ctrl-[hjkl]
noremap <C-J> <C-W>j
noremap <C-K> <C-W>k
noremap <C-H> <C-W>h
noremap <C-L> <C-W>l

set termwinsize=15x0
