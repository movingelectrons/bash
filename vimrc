execute pathogen#infect()
syntax on
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set number
set whichwrap+=<,>,h,l,[,]
set encoding=utf-8
colorscheme elflord
au BufRead,BufNewFile *.ino setfiletype c
nmap <F2> :TagbarToggle<CR>
nmap <F3> :Ntree<CR>

