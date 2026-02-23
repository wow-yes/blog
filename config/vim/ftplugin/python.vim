if filereadable(getcwd() . '/Makefile') || filereadable(getcwd() . '/makefile') 
    setlocal makeprg=make\ -j4
else 
    setlocal makeprg=python3\ %
endif

setlocal errorformat=
    \%A\ \ File\ \"%f\"\\,\ line\ %l\\,\ in\ %m,
    \%Z\ \ \ \ %p^,
    \%C%m,
    \%-G%.%#
