---
title  : Vim-snippets自定义补全代码
tags   : Vim
excerpt: 让vim一键打出组合拳
mathjax: true
toc    : true
---

经常写代码的同学会发现，很多代码都是一个套路，比如博客里的Jekyll yaml文件头，
Python画图里面的import 三大件，都是一些很套路的代码。因此，可以使用vim-snippets对他们进行分类整理，
使用相应的标识来对应一些代码中的“官话，套话”。让Vim一次打出一套组合拳，甚至可以由此把代码的框架搭好，我们只管将部分补全即可。

```VimL
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
let g:UltiSnipsSnippetDirectories=["UltiSnips", $HOME.'/.snippets/']
```

上述代码添加到.vimrc当中，然后进行插件的安装。插件安装完了之后，`~/.snippets/`目录下可以存放一些自定义的snippets文件

```
snippet iday
`date +%y-%m-%d\ %H:%M`.
endsnippet
```

这样我打`iday`+`Tab`键，就会自动补全日期 `21-12-20 22:30.`

下面是我制作的两个补全文件

- [all.snippets](https://github.com/wow-yes/blog/blob/master/config/snippets/all.snippets)
- [markdown.snippets](https://github.com/wow-yes/blog/blob/master/config/snippets/markdown.snippets)

不同语言的补全要放在对应的文件内，比如我现在用到的几个

```bash
all.snippets #对所有文件都生效
make.snippets # makefile
markdown.snippets # 对markdown文件生效
python.snippets # 对Python文件
```

不管多么长的代码，只要按规则放进去，就可以方便地打出来，这种自定义的感觉如同游戏中发出连招一样。

当然，Vscode及其他IDE都有类似的功能，在此不再赘述。


## 参考资料 

- [vim-snippets_百度搜索](https://www.baidu.com/s?wd=vim-snippets&rsv_spt=1&rsv_iqid=0xe7e1088300053cbf&issp=1&f=8&rsv_bp=1&rsv_idx=2&ie=utf-8&tn=baiduhome_pg&rsv_enter=1&rsv_dl=tb&rsv_sug3=1&rsv_sug1=1&rsv_sug7=100&rsv_sug2=0&rsv_btype=i&inputT=690&rsv_sug4=690)
- [vim配置之snippets代码块_水枂的博客-CSDN博客_snippets vim](https://blog.csdn.net/weixin_43839785/article/details/104255963)
- [Vim 自定义补全利器 Snippet - wAt3her - 博客园](https://www.cnblogs.com/wAther/p/10444045.html)
- [How to use code snippets in Vim like a cowboy 🤠️](https://bhupesh-v.github.io/learn-how-to-use-code-snippets-vim-cowboy/)
- [vim-snipmate-超级好用 - ttang - 博客园](https://www.cnblogs.com/fstang/archive/2012/12/05/2803964.html)
- [vim中自动补全插件snipmate使用 - 菩提花开 - 博客园](https://www.cnblogs.com/putihuakai/p/11427968.html)
- [设置vim的默认模板文件 - 编程之家](https://www.jb51.cc/bash/392841.html)
