let c_functions=1
let c_function_pointers=1
compiler gcc 
if filereadable(getcwd().'/Makefile') || filereadable(getcwd().'/makefile') 
    setlocal makeprg=make\ -j4
else
    setlocal makeprg=gcc\ -Wall\ -Wextra\ -pedantic\ -std=c11\ -fsyntax-only\ % 
endif

function! s:SwitchToExe() 
    setlocal makeprg=gcc\ -Wall\ -Wextra\ -pedantic\ -std=c11\ %\ -o\ %:r
    echo "makeprg -> " . &l:makeprg
endfunction

command! MakeExe call s:SwitchToExe()

" ~/.vim/after/ftplugin/c.vim - 带warning统计的后台make

function! s:BackgroundMake()
    let job = job_start('make', {
        \ 'out_cb': {ch, msg->s:HandleOutput(msg)},
        \ 'err_cb': {ch, msg->s:HandleOutput(msg)},
        \ 'exit_cb': {job, status->s:MakeDone(status)}
        \ })
    echo 'Make 已启动'
endfunction

let s:output_lines = []
let s:error_count = 0
let s:warning_count = 0

function! s:HandleOutput(msg)
    call add(s:output_lines, a:msg)

    " 简单的warning统计（根据常见编译器的warning格式）
    if a:msg =~? 'warning'
        let s:warning_count += 1
    endif
    " 简单的error统计
    if a:msg =~? 'error'
        let s:error_count += 1
    endif
endfunction

function! s:MakeDone(status)
    if a:status != 0 && !empty(s:output_lines)
        call setqflist([], 'r', {'lines': s:output_lines})
        copen
    endif

    " 显示统计信息
    if a:status == 0
        echo printf('Make 成功完成 (warnings: %d)', s:warning_count)
    else
        echo printf('Make 失败 (errors: %d, warnings: %d)', s:error_count, s:warning_count)
    endif

    " 重置计数器
    let s:output_lines = []
    let s:error_count = 0
    let s:warning_count = 0
endfunction

" 映射F5键
nnoremap <buffer> <F5> :call <SID>BackgroundMake()<CR>
