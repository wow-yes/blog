let g:tex_conceal = ""  " 防止公式内容被隐藏
let g:markdown_fenced_languages = ['html', 'python', 'javascript', 'css', 'vim', 'sh', 'c']

syntax include @tex $VIMRUNTIME/syntax/tex.vim
syntax region mkdMath start="\\\@<!\$" end="\$" skip="\\\$" contains=@tex keepend
syntax region mkdMath start="\\\@<!\$\$" end="\$\$" skip="\\\$" contains=@tex keepend

highlight link mkdMath Special
