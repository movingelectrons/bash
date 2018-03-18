execute pathogen#infect()
syntax on
filetype plugin indent on
colorscheme elflord

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set number
set whichwrap+=<,>,h,l,[,]
set encoding=utf-8

au BufRead,BufNewFile *.ino setfiletype c

nmap <F2> :TagbarToggle<CR>
nmap <F3> :Ntree<CR>

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

