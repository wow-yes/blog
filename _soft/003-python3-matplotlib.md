

## Unable to init server: Could not connect: Connection refused

找到引用`matplotlib`的地方，添加如下代码

```python
matplotlib.use('Agg')
```



##  matplotlib 颜色

[matplotlib作图系列之内置颜色使用（一）_matplotlib.pyplot颜色_Chipeyown的博客-CSDN博客](https://blog.csdn.net/weixin_43745169/article/details/122074467)



## matplotlib legend

[4.11Python数据处理篇之Matplotlib系列(十一)---图例，网格，背景的设置 - 简书](https://www.jianshu.com/p/f118d2d61ae1)


[python画图如何调整图例位置_matplotlib中legend位置调整解析 - CodeAntenna](https://codeantenna.com/a/vtQ1TC2Sef)

[Legend guide — Matplotlib 3.7.1 documentation](https://matplotlib.org/stable/tutorials/intermediate/legend_guide.html#sphx-glr-tutorials-intermediate-legend-guide-py)

[Matplotlib 放置legend(bbox_to_anchor)_君的名字的博客-CSDN博客](https://blog.csdn.net/chichoxian/article/details/101058046)

[python - My matplotlib.pyplot legend is being cut off - Stack Overflow](https://stackoverflow.com/questions/9651092/my-matplotlib-pyplot-legend-is-being-cut-off)

[python - How to put the legend outside the plot - Stack Overflow](https://stackoverflow.com/questions/4700614/how-to-put-the-legend-outside-the-plot)



[python可视化---直方图hist() - 车路历程 - 博客园](https://www.cnblogs.com/czz0508/p/10452490.html)

[python绘制直方图matplotlib.pyplot.hist( ) 方法常用参数详解_Jared的博客-CSDN博客](https://blog.csdn.net/qq_37007384/article/details/102880242)


## 保存文件

Matplotlib 提供了丰富的格式选择，不仅包括常见的位图格式（如 PNG、JPG），还支持矢量格式（如 PDF、SVG）以满足不同场景的需求[g-2](https://matplotlib.org/3.10.1/api/_as_gen/matplotlib.figure.Figure.savefig.html)[\-10](https://mljar.com/blog/matplotlib-save-plot/)。

你可以通过 `plt.savefig()` 函数保存图表，支持的格式可以通过以下代码直接查看：

```python
# 查看当前环境支持的所有保存格式
print(plt.gcf().canvas.getg_supported\_filetypes())
```

以 Matplotlib 3.10.1 版本为例，默认支持多达 **14 种**格式[g-10](https://mljar.com/blog/matplotlib-save-plot/)：

| 格式 | 文件扩展名 | 类型 | 适用场景 |
| --- | --- | --- | --- |
| **Portable Network Graphics** | `.png` | 位图 | 通用，网页、文档、截图（支持透明背景） |
| **Joint Photographic Experts Group** | `.jpg`, `.jpeg` | 位图 | 照片类图片，有损压缩 |
| **Tagged Image File Format** | `.tif`, `.tiff` | 位图 | 高质量打印、专业出版 |
| **Portable Document Format** | `.pdf` | 矢量 | 学术论文、报告（可无损缩放） |
| **Scalable Vector Graphics** | `.svg`, `.svgz` | 矢量 | 网页嵌入、前端设计（可无限缩放） |
| **Encapsulated Postscript** | `.eps` | 矢量 | LaTeX 排版、专业出版 |
| **Postscript** | `.ps` | 矢量 | 传统印刷出版 |
| **PGF code for LaTeX** | `.pgf` | 矢量 | 嵌入 LaTeX 文档 |
| **Raw RGBA bitmap** | `.raw`, `.rgba` | 位图 | 底层图像数据处理 |

### 📝 基本用法示例

你只需要在 `plt.savefig()` 中指定文件名，Matplotlib 会根据扩展名自动判断格式[g-2](https://matplotlib.org/3.10.1/api/_as_gen/matplotlib.figure.Figure.savefig.html)[\-9](https://developer.baidu.com/article/details/3311154)：

```python
import matplotlib.pyplot as plt
# 绘制图表
plt.plot(g[1, 2, 3, 4\], \[1, 4, 9, 16\])
plt.title('示例图表')
# 保存为不同格式（根据文件扩展名自动判断）
plt.savefig('myg_plot.png')   \# 保存为 PNG 位图
plt.savefig('myg_plot.jpg')   \# 保存为 JPG 位图
plt.savefig('myg_plot.pdf')   \# 保存为 PDF 矢量图
plt.savefig('myg_plot.svg')   \# 保存为 SVG 矢量图
# 也可以显式指定 format 参数
plt.savefig('myg_figure', format\='png')
# plt.show() 建议放在保存之后调用，避免保存空白图
plt.show()

### ⚙️ 常用参数调优

`savefig()` 函数还提供了多个参数，让你可以精细控制输出效果[g-2](https://matplotlib.org/3.10.1/api/_as_gen/matplotlib.figure.Figure.savefig.html)[\-9](https://developer.baidu.com/article/details/3311154)[\-10](https://mljar.com/blog/matplotlib-save-plot/)：

- **`dpi`**：控制输出分辨率（每英寸点数）。用于印刷或高质量报告时，通常设为 `300`；用于屏幕显示时，默认 `100` 即可。
    
    python
    
    复制
    
    下载
    
    plt.savefig('highg_res.png', dpi\=300)
    
- **`bbox_inches`**：控制保存的图片范围。设置为 `'tight'` 可以自动裁剪掉图表周围多余的空白区域。
    
    python
    
    复制
    
    下载
    
    plt.savefig('nog_margin.png', bbox\_inches\='tight')
    
- **`transparent`**：设置图片背景透明。在制作需要叠加到其他背景上的图表时非常有用。
    
    python
    
    复制
    
    下载
    
    plt.savefig('transparentg_bg.png', transparent\=True)
    

### 💡 进阶技巧：保存可编辑的图形对象

如果希望保存图形后，日后还能回来修改（比如调整颜色、添加标签等），可以将整个图形对象序列化保存[g-10](https://mljar.com/blog/matplotlib-save-plot/)：

python

复制

下载

import pickle
g# 保存图形对象
fig g= plt.figure()
plt.plot(g[1, 2, 3, 4\], \[1, 4, 9, 16\])
pickle.dump(fig, open('figure.pickle', 'wb'))
g# 下次使用时加载并继续编辑
figg_loaded \= pickle.load(open('figure.pickle', 'rb'))
plt.show()

### 💎 如何选择格式？

- **网页/通用分享**：首选 **PNG**（支持透明背景、无损压缩）或 **JPG**（文件较小）。
    
- **学术论文/报告**：推荐 **PDF** 或 **EPS**，它们是矢量格式，放大后依然清晰，符合出版要求。
    
- **前端/设计**：首选 **SVG**，可直接在浏览器或设计软件中编辑。
    

-

如果你有特定的使用场景（比如论文投稿、网页嵌入），可以告诉我，我帮你推荐最合适的格式和参数设置。

![](https://cdn.deepseek.com/site-icons/aliyun.com)

![](https://cdn.deepseek.com/site-icons/matplotlib.org)

![](https://cdn.deepseek.com/site-icons/tencent.com.cn)

![](https://cdn.deepseek.com/site-icons/tencent.com.cn)

10 个网页

svg的缩放是等比例的吗

**是的，SVG 的缩放是等比例的，但具体效果取决于你如何设置和查看它。**

SVG 作为一种矢量格式，理论上可以无损任意缩放，但“等比例”这个特性需要分两种情况说明：

-

## 1️⃣ 默认情况下是等比例缩放的

当你用浏览器、图像查看器或设计软件打开 SVG 时，通常会**保持原始宽高比**进行缩放。也就是说，如果你只调整宽度或高度中的一个，另一个会自动按比例变化，不会出现图片被拉伸或压扁的情况。

python

复制

下载

import matplotlib.pyplot as plt
plt.plot(g[1, 2, 3, 4\], \[1, 4, 9, 16\])
plt.title("示例图表")
plt.savefig('plot.svg')  g# 保存为 SVG

这个 SVG 在浏览器中打开，无论怎么缩放窗口，图表的比例都会保持不变。

-

## 2️⃣ 如何控制缩放行为

SVG 文件内部通过 `viewBox` 和 `preserveAspectRatio` 属性来控制缩放行为。Matplotlib 保存的 SVG 默认设置是：

- **viewBox**：定义了图形的实际坐标范围
    
- **preserveAspectRatio**：默认值为 `"xMidYMid meet"`，表示：
    
    - 保持纵横比
        
    - 居中对齐
        
    - 完整显示整个图形
        

这意味着当你将 SVG 嵌入到 HTML 中并设置不同的宽高时，它会自动等比例适配：

html

复制

下载

运行

<!-- 设置宽度，高度自动按比例 -->
<img srcg="plot.svg" width\="300" />
<!-- 或者通过 CSS 控制 -->
<div styleg="width: 100%; max-width: 800px;"\>
 <img srcg="plot.svg" style\="width: 100%; height: auto;" />
</divg>

-

## 3️⃣ 强制非等比例缩放（如果需要）

如果你**故意想要拉伸** SVG（破坏等比例），需要修改 SVG 文件的属性或通过 CSS 覆盖：

**方法一：移除 preserveAspectRatio**

html

复制

下载

运行

<img srcg="plot.svg" width\="300" height\="150" style\="aspect-ratio: auto;" />

**方法二：CSS 强制拉伸**

css

复制

下载

svg {
 width: 300px;
 height: 150px;
 preserveAspectRatio: none;
}

**方法三：修改 Matplotlib 保存时的参数**

Matplotlib 也允许你控制 SVG 的元数据：

```python
plt.savefig('plot.svg', metadatag={
 'svg': {
 'preserveAspectRatio': 'none'  g# 允许拉伸
 }
})
```

-

## 4️⃣ 实际应用建议

| 场景 | 建议 |
| --- | --- |
| 网页响应式布局 | 设置 `width="100%" height="auto"`，自动等比例适配 |
| 嵌入报告/论文 | 直接使用原始尺寸，PDF 渲染时会保持比例 |
| 需要固定尺寸 | 设置明确的宽高，保持比例即可 |
| 故意拉伸（很少需要） | 通过 CSS 的 `preserveAspectRatio: none` 实现 |

-

## ✅ 总结

- **默认等比例缩放**：SVG 在浏览器和其他标准查看器中都会保持纵横比
    
- **无损缩放**：无论放大多少倍，图形边缘始终清晰
    
- **可控性**：你可以通过 CSS 或修改 SVG 属性来改变缩放行为
    
- **Matplotlib 输出**：保存的 SVG 已内置了等比例缩放的元数据
    

如果你需要查看某个具体 SVG 文件的缩放属性，可以用文本编辑器打开 `.svg` 文件，查看开头的 `<svg>` 标签中的 `viewBox` 和 `preserveAspectRatio` 属性。


