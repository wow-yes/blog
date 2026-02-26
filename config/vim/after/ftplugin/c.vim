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

