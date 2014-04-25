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
set formatoptions=crotq
colorscheme ubloh

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
"save-file imediatly
"nnoremap <C-w> :w<cr>
"inoremap <C-w> <esc>:w<cr>a
" An example for a vimrc file.
"
" Maintainer:	Bram Moolenaar <Bram@vim.org>
" Last change:	2011 Apr 15
"
" To use it, copy it to
"     for Unix and OS/2:  ~/.vimrc
"	      for Amiga:  s:.vimrc
"  for MS-DOS and Win32:  $VIM\_vimrc
"	    for OpenVMS:  sys$login:.vimrc

" When started as "evim", evim.vim will already have done these settings.
if v:progname =~? "evim"
  finish
endif

" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

if has("vms")
  set nobackup		" do not keep a backup file, use versions instead
else
  set backup		" keep a backup file
endif
set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching

" Don't use Ex mode, use Q for formatting
map Q gq

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

" Only do this part when compiled with support for autocommands.
if has("autocmd")

  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  filetype plugin indent on

  " Put these in an autocmd group, so that we can delete them easily.
  augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78

  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
  " Also don't do it when the mark is in the first line, that is the default
  " position when opening a file.
  autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

  augroup END

else

  set autoindent		" always set autoindenting on

endif " has("autocmd")

" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
" Only define it when not defined already.
if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_ | diffthis
		  \ | wincmd p | diffthis
endif

"Copy and paste between different Vim sessions
nmap _Y :!echo "> ~/.vi_tmp<CR><CR>:w! ~/.vi_tmp<CR>
vmap _Y :w! ~/.vi_tmp<CR>
nmap _P :r ~/.vi_tmp<CR>"
