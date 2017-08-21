execute pathogen#infect()
syntax on
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set number
set whichwrap+=<,>,h,l,[,]
colorscheme elflord
au BufRead,BufNewFile *.ino setfiletype c
nmap <F11> :TagbarToggle<CR>
nmap <F12> :NerdTree<CR>

