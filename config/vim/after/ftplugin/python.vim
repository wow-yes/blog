if filereadable(getcwd() . '/Makefile') || filereadable(getcwd() . '/makefile') 
    compiler make
    setlocal makeprg=make\ -j4
else 
    compiler pyright
endif

