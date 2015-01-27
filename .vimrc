let g:clang_use_library=1
" if there's an error, allow us to see it
let g:clang_complete_copen=1
let g:clang_complete_macros=1
let g:clang_complete_patterns=0
" Limit memory use
let g:clang_memory_percent=70
let g:clang_auto_select=1
" The single one that works with clang_complete
let g:clang_snippets_engine='clang_complete'
let g:clang_library_path='/usr/lib/llvm-3.4/lib'
set conceallevel=2
set concealcursor=vin
let g:clang_snippets=1
let g:clang_conceal_snippets=1

" Pathogen
execute pathogen#infect()
call pathogen#helptags() " generate helptags for everything in 'runtimepath'
syntax on
filetype plugin indent on

"excecute pathogen#infect()
"syntax on
"filetype plugin indent on

" If you prefer the Omni-Completion tip window to close when a selection is
" made, these lines close it on movement in insert mode or when leaving
" insert mode
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

nmap <c-s> :w<CR>

map <c-a> ggVG<CR>    
imap <c-a> <ESC>ggVG<CR>    

" copy and paste
vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <ESC>"+pa

:imap <c-s> <Esc>:w<CR>a
:imap <c-s> <Esc><c-s>
:imap jj <Esc>

:se et

nnoremap <leader>cc :0r /etc/vim/cpptemplate.cpp<CR>

:set lines=999 columns=85
:winpos 800 0

"folding settings
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use
"set foldcolumn=2
