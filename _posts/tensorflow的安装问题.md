---
title     : tensorflow的安装
tags      :
categories:
excerpt   : 此处写摘要
mathjax   : true
published : true
toc       : true
---

### 1. 确定软件的版本

tensorflow开发过于快速，网络上的教程、甚至官方教程都相对滞后。因此，在满足项目需求的情况，
确定自己的tensorflow版本

然后根据自己的版本来确定相应的软件包， 查询页面如下

[Build from source  |  TensorFlow](https://tensorflow.google.cn/install/source#tested_build_configurations)

| Version           | Python version | Compiler  | Build tools | cuDNN | CUDA |
| ----------------- | -------------- | --------- | ----------- | ----- | ---- |
| tensorflow-2.10.0 | 3.7-3.10       | GCC 9.3.1 | Bazel 5.1.1 | 8.1   | 11.2 |
| tensorflow-2.9.0  | 3.7-3.10       | GCC 9.3.1 | Bazel 5.0.0 | 8.1   | 11.2 |
| tensorflow-2.8.0  | 3.7-3.10       | GCC 7.3.1 | Bazel 4.2.1 | 8.1   | 11.2 |
| tensorflow-2.7.0  | 3.7-3.9        | GCC 7.3.1 | Bazel 3.7.2 | 8.1   | 11.2 |
| tensorflow-2.6.0  | 3.6-3.9        | GCC 7.3.1 | Bazel 3.7.2 | 8.1   | 11.2 |
| tensorflow-2.5.0  | 3.6-3.9        | GCC 7.3.1 | Bazel 3.7.2 | 8.1   | 11.2 |
| tensorflow-2.4.0  | 3.6-3.8        | GCC 7.3.1 | Bazel 3.1.0 | 8.0   | 11.0 |
| tensorflow-2.3.0  | 3.5-3.8        | GCC 7.3.1 | Bazel 3.1.0 | 7.6   | 10.1 |
| tensorflow-2.2.0  | 3.5-3.8        | GCC 7.3.1 | Bazel 2.0.0 | 7.6   | 10.1 |

从nvidia官网上获取两个文件，`cuda*.run`和`cudnn*.deb`，其中run文件已经包含了显卡驱动。

```bash
wget http://developer.download.nvidia.com/compute/cuda/10.2/Prod/local_installers/cuda_10.2.89_440.33.01_linux.run
```

然后下载cudnn [地址](https://developer.nvidia.com/rdp/cudnn-archive)


### 2. 彻底删除系统中nvidia驱动和nouveau驱动

常见问题

Finished with code: 256

旧的驱动没有完全删除，最好卸载nvidia和nouveau，然后重启

或者使用命令行禁用相关模块

```bash
sudo apt-get purge xserver-xorg-video-nvidia-515
sudo apt-get purge xserver-xorg-video-nouveau*
```

### 3. 安装对应的tensorflow包并进行测试




Could not load dynamic library ‘libcudnn.so.8‘ 

tensorflow和cudnn的版本号不对应，重新安装对应的libcudnn


### 4. 其他
一旦安装完毕，那么请谨慎升级tensorflow等相关的python包，很可能出现不兼容的情况。