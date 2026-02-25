setlocal wrap
setlocal linebreak
setlocal breakindent
setlocal textwidth=80
setlocal formatoptions+=t
setlocal formatoptions+=r
"setlocal foldmethod=expr foldexpr=MarkdownFold()

let g:tex_conceal = ""  " 防止公式内容被隐藏
let g:markdown_fenced_languages = ['html', 'python', 'javascript', 'css', 'vim', 'sh', 'c']

compiler pandoc 

