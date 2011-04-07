" Pathogen
call pathogen#runtime_append_all_bundles() 
call pathogen#helptags()

filetype plugin indent on

set nocompatible
set expandtab
set tabstop=2
set shiftwidth=2
set autoindent
set smartindent
colorscheme vibrantink

" tab navigation like firefox
:nmap <C-t> :tabnew<CR>
:nmap <C-p> :tabprevious<cr>
:nmap <C-n> :tabnext<cr>
":map <C-c> :tabclose<cr>
:map <F1> :NERDTreeToggle<cr>
:map <C-m> :NERDTreeToggle<cr>
:map <F2> :Ddc<cr>
:map <F3> :Ddw<cr>

"let php_sql_query = 1
let php_baselib = 1
let php_htmlInStrings = 1
let php_parent_error_close = 1

if has("autocmd")
" Drupal *.modules files.
	augroup module
		autocmd BufRead *.module set filetype=php
	augroup END
	augroup profile
		autocmd BufRead *.profile set filetype=php
	augroup END
	augroup install
		autocmd BufRead *.install set filetype=php
	augroup END
	augroup test
		autocmd BufRead *.test set filetype=php
	augroup END
	augroup pjs
		autocmd BufRead *.pjs set filetype=java
	augroup END
	augroup php
		autocmd BufRead *.php set filetype=php
	augroup END
endif
au BufRead,BufNewFile *.css set ft=css syntax=css3
au BufRead,BufNewFile *.js set ft=javascript.jquery
autocmd BufNewFile,BufReadPost *.jade set filetype=jade
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType jade set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType c set omnifunc=ccomplete#Complet

let g:SuperTabDefaultCompletionType = "<C-X><C-O>"

set gfn=Monaco:h12 


