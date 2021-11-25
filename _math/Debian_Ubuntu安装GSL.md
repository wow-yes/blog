---
name: Debian下安装GSL
---

Debian系安装GSL库非常简单，只需要一个命令

```
sudo apt-get install libgsl-dev libblas-dev liblapack-dev
sudo apt-get install gsl-doc-info gsl-doc-pdf gsl-ref-html gsl-ref-psdoc
```

然后就可以在c程序中引用相应的库进行编程，不需要设置环境。

由于这个库非常丰富，因此在使用的过程中最好有相应的手册。

但是需要注意的是，所安装的库和所使用的手册要对应。源里面的GSL版本一般比较老（Ubuntu20.04里面，GSL版本是2.5），而官网的手册是最新的（2.7）。
最新的手册可能包含旧版本中没有的库，在使用过程中需要对应。

- [GNU Scientific Library — GSL 2.7 documentation](https://www.gnu.org/software/gsl/doc/html/)

-------------------------------------------------------------------------------

另一种方法就是直接编译最新的库进行安装，可以参考以下链接

- [ubuntu14.04 下安装 gsl 科学计算库 - 白菜菜白 - 博客园](https://www.cnblogs.com/lvchaoshun/p/7098198.html)
- [Ubuntu安装GSL_Muggle的博客-CSDN博客](https://blog.csdn.net/qq_38131812/article/details/97168214)
