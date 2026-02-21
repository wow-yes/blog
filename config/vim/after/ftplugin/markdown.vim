setlocal wrap
setlocal linebreak
setlocal breakindent
setlocal textwidth=80
setlocal formatoptions+=t
setlocal formatoptions+=r
"setlocal foldmethod=expr foldexpr=MarkdownFold()

let g:tex_conceal = ""  " 防止公式内容被隐藏
let g:markdown_fenced_languages = ['html', 'python', 'javascript', 'css', 'vim', 'sh', 'c']

" makeprg 设置
setlocal makeprg=pandoc\ %\ -s\ -o\ %<.html
setlocal errorformat=
      \%f:%l:\ %m,
      \%+A%f:%l:%c:\ %m,
      \%+C%\\s%#%m

" 行内公式 $...$


" 自定义命令
command! -buffer MakePDF  setlocal makeprg=pandoc\ %\ -s\ -o\ %<.pdf
command! -buffer MakeHTML setlocal makeprg=pandoc\ %\ -s\ -o\ %<.html
command! -buffer MakeDOCX setlocal makeprg=pandoc\ %\ -s\ -o\ %<.docx

