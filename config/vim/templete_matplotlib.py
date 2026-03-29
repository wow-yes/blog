'''
一个标准的matplotlib 模板
'''
import pandas as pd
import matplotlib.pyplot as plt
import platform

# 解决中文字体

def plotsvg(df:pd.DataFrame,figname:str="onefigure"):
    # for windows

    if platform.system() == 'Windows':
        #plt.rcParams['font.sans-serif'] = ['Microsoft Yahei', 'SimHei', 'DejaVu Sans']
        #plt.rcParams['axes.unicode_minus'] = False
        plt.rcParams['font.family'] = 'sans-serif'
    else:
    # for linux
        plt.rcParams['font.sans-serif'] = ['WenQuanYi Micro Hei', 'Noto Sans CJK SC', 'DejaVu Sans']
        plt.rcParams['axes.unicode_minus'] = False
    
    # 使用默认风格
    # plt.style.use('default')
    plt.style.use('classic')
    
    fig, ax = plt.subplots(3,1, figsize=(10, 5.5), dpi=300, sharex=True)
    
    # 子图1的布局
    
    ax[0].plot(df.index, df['a'],label='a', marker='.', markersize=2)
    ax[0].set_ylabel('振幅')
    ax[0].set_title('科学数据可视化')
    ax[0].grid(True, alpha=0.3)
    ax[0].legend(loc='upper right')

    # 图像的全局设置, 自动调整布局
    plt.tight_layout()
    
    # 保存图片
    # 方案一：保存为SVG矢量图 (推荐，PPT中可无限放大)
    plt.savefig(f'{figname}.svg', format='svg', bbox_inches='tight')
    
    # 方案二：保存为高分辨率PNG (若PPT版本较老，兼容性更好)
    plt.savefig(f'{figname}.png', dpi=300, bbox_inches='tight')
    
    plt.close()

if __name__ == '__main__':

    df2 = pd.DataFrame({
        'a': [100, 120, 140, 160, 180, 200],  # 产品A
        'b': [80, 95, 110, 130, 150, 170],    # 产品B
        'c': [120, 115, 125, 130, 140, 155],  # 产品C
        }, index=['1', '2', '3', '4', '5', '6'])

    plotsvg(df2, "test")
