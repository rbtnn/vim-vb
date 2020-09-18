
scriptencoding utf-8

let g:loaded_vb = 1

function! s:bufenter() abort
    if &filetype == 'vb'
        syntax keyword vbKeyword ReadOnly Protected Imports Module Try Catch Overrides Overridable Throw Partial NotInheritable
        syntax keyword vbKeyword Shared Class Finally Using Continue Of Inherits Default Region Structure AndAlso OrElse
        syntax keyword vbKeyword Namespace Strict My MyBase IsNot Handles And Or Delegate MarshalAs
        nnoremap <buffer><nowait><silent>[[      :<C-u>call search('^\s*\(Public\\|Private\)\s\+\(Shared\s\+\)\?\(Structure\\|Enum\\|Sub\\|Function\)', 'b')<cr>
        nnoremap <buffer><nowait><silent>]]      :<C-u>call search('^\s*\(Public\\|Private\)\s\+\(Shared\s\+\)\?\(Structure\\|Enum\\|Sub\\|Function\)', '')<cr>
    endif
endfunction

augroup vim_vb
    autocmd!
    autocmd BufEnter * :call <SID>bufenter()
augroup END

