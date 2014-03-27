runtime! debian.vim
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif
execute pathogen#infect()
filetype plugin indent on
set cindent
set autoindent
set smarttab
set tabstop=2
set shiftwidth=2
set expandtab
set showmatch
set laststatus=2
set mouse=a
set backup
set backupdir=~/.vimtmp
set directory=~/.vimtmp
set number
set numberwidth=4
set wrap
set ru
set t_Co=256
nnoremap - <nop>
let mapleader = "-"
let maplocalleader = "m"

exec "set listchars=tab:\uBB\uBB,trail:\uB7,nbsp:~"
set list
"mappings
"toggles file-navigator in a side-pane on and of
nnoremap <C-n> :NERDTreeTabsToggle<CR> 
"indentin lines more quickly
nnoremap <leader>l >>
nnoremap <leader>h <<
"moving lines up and down
nnoremap <leader>j :m .+1<CR>
nnoremap <leader>k :m .-2<CR>
"inoremap <M-s-j> <esc>:m .+1<CR>i
"inoremap <M-s-k> <esc>:m .-2<CR>i
"make the actual word uppercase
inoremap <C-u> <esc> viwUi
nnoremap <C-u> viwU
"delete lines with -<number>
nnoremap <leader>1 d1d
nnoremap <leader>2 d2d
nnoremap <leader>3 d3d
nnoremap <leader>4 d4d
nnoremap <leader>5 d5d
nnoremap <leader>6 d6d
nnoremap <leader>7 d7d
nnoremap <leader>8 d8d
nnoremap <leader>9 d9d
"edit vimrc-file in split-win
nnoremap <leader>emv :vsplit $MYVIMRC<CR>
"source vimrc-file
nnoremap <leader>smv :source $MYVIMRC<CR>
"enclose the actual word with ", '' or any kind of bracket
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel
nnoremap <leader>< viw<esc>a><esc>hbi<<esc>lel
nnoremap <leader>( viw<esc>a)<esc>hbi(<esc>lel
nnoremap <leader>[ viw<esc>a]<esc>hbi[<esc>lel
nnoremap <leader>{ viw<esc>a}<esc>hbi{<esc>lel
"comment actual line
nnoremap <leader># 0i#<esc>
nnoremap <leader>// 0i//<esc>
nnoremap <leader>/* 0i/*<esc>$a*/<esc>$
"jump to end and begin of line more logigal
nnoremap L $
nnoremap H 0
"from input to command-mode with jk 
inoremap jk <esc>
abbrev mailmich chaosprinz76@googlemail.com 
"mappings for dragvisuals
vmap  <expr>  <LEFT>   DVB_Drag('left') 
vmap  <expr>  <RIGHT>  DVB_Drag('right')
vmap  <expr>  <DOWN>   DVB_Drag('down') 
vmap  <expr>  <UP>     DVB_Drag('up')   
vmap  <expr>  D        DVB_Duplicate()  
