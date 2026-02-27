" ~/.vim/after/syntax/c.vim
" 自动根据 tags 文件高亮 C 语言中的宏和全局变量
" 自动从 ctags 文件加载宏名并高亮

" 自动从 ctags 文件加载宏名并高亮

"syntax clear cMacroName
syntax keyword cMacroName PLACEHOLDER_MACRO
function! HighlightMacrosFromTags()
    let l:tagsfile = findfile('tags', '.;')
    if empty(l:tagsfile)
        echom "No tags" 
        return
    endif

    " 遍历 tags 文件
    for l:line in readfile(l:tagsfile)
        if l:line =~ '^!' || l:line =~ '^\s*$'
            continue
        endif
        " 宏的 kind 可能是 d 或 p
        if l:line =~ '\t.*;"\t[dp]'
            "echom "line " .l:line
            let l:macro = matchstr(l:line, '^[^\t]\+')
            if !empty(l:macro)
                "echom "Found macro: " . l:macro
                exe 'syntax keyword cMacroName ' . l:macro
            endif
        endif
    endfor

    " 设置高亮颜色（黄色）
endfunction

call HighlightMacrosFromTags()

hi def link cMacroName PreProc
syn match cOperator "&&\|||"

