"setlocal errorformat=%f:%l:%c:\ %m,%f:%l:\ %m
compiler gcc
if filereadable(getcwd().'/Makefile') || filereadable(getcwd().'/makefile') 
    setlocal makeprg=make\ -j4
else
    setlocal makeprg=g++\ -Wall\ -Wextra\ -pedantic\ -std=c++17\ -fsyntax-only\ % 
endif

function! s:SwitchToExe() 
    setlocal makeprg=g++\ -Wall\ -Wextra\ -pedantic\ -std=c++17\ %\ -o\ %:r
    echo "makeprg -> " . &l:makeprg
endfunction

command! MakeExe call s:SwitchToExe()
