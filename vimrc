set ai et nu sts=2 ts=2 sw=2 so=5
filetype plugin indent on
"call pathogen#infect()
silent! so coverage.vim
silent! Uncov

" Remap 0 in command mode to bring us to the first non-whitespace
" char of the line
map 0 ^ 

" Redefine the leader to comma
let mapleader = "," 
let g:mapleader = "," 

" Quick save
nmap <leader>w :w!<cr>

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif
" Remember info about open buffers on close
set viminfo^=%


nmap <leader>j mz:m+<cr>`z
nmap <leader>k mz:m-2<cr>`z