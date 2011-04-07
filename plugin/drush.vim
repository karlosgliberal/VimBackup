" Author:  karlos <karlosgliberal@gmail.com>
" License: GPL
" URL:     http://github.com/investic/git-drush/

if !exists('g:drush_bin')
    let g:drush_bin = 'drush'
endif

" cache clear.
function! Ddc(args)
    " Wanna see progress...
    execute '!' g:drush_bin 'cc all' a:args
endfunction

"watchdog delet all.
function! Ddw(args)
    " Wanna see progress...
    execute '!' g:drush_bin 'watchdog delete all' a:args
endfunction

command! -nargs=* Ddc              call Ddc(<q-args>)
command! -nargs=* Ddw             call Ddw(<q-args>)
