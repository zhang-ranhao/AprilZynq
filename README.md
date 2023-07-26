# 目录
- [1. 项目简述](#1-项目简述)
  - [1.1 项目名称](#11-项目名称)
  - [1.2 项目背景](#12-项目背景)
  - [1.3 目前工作进度](#13-目前工作进度)
  - [1.4 未来工作计划](#14-未来工作计划)
- [2. 使用说明](#2-使用说明)
  - [2.1 硬件信息](#21-硬件信息)
  - [2.2 Vivado软件部分](#22-vivado软件部分)
  - [2.3 Vitis软件部分](#23-vitis软件部分)

# 1. 项目简述
## 1.1 项目名称
基于Zynq UltraScale+ MPSoC的AprilTag算法加速器设计
## 1.2 项目背景
本项目来源于本人研究生一年级所负责的项目：[陆空两栖可重构机器人“比翼鸟”](https://www.bilibili.com/video/BV1ch4y1E77Y)，机器人实物图如下图所示。  
![图片文字描述]( https://github.com/zhang-ranhao/AprilZynq/blob/master/img/%E6%9C%BA%E5%99%A8%E4%BA%BA%E6%A8%A1%E5%9E%8B%E5%9B%BE%E7%89%87.jpg )
在该项目中，为了完成两架无人机的自主对接，我们采用了[AprilTag](https://april.eecs.umich.edu/software/apriltag)视觉基准系统和[OpenMV4](https://openmv.io/)摄像头模块来搭建视觉定位系统，我们希望无人机在更高的高度下也能稳定识别到AprilTag标签时，所以将摄像头分辨率从QQVGA(160×120)提高到VGA(640×480)，但此时视觉定位数据的刷新频率小于1Hz，无法满足无人机精确位置控制环所要求的数据更新频率。基于此，本项目旨在利用Zynq UltraScale+ MPSoC这一ARM+FPGA架构的硬件平台对该算法进行加速，以满足实时性要求。
## 1.3 目前工作进度
a. 已搭建好基于的ZYNQ的图像采集与处理系统，实现对来自OV5640摄像头的视频图像的实时采集、存储、预处理与显示，如下图框图所示。  
![图片文字描述](https://github.com/zhang-ranhao/AprilZynq/blob/master/img/%E9%A1%B9%E7%9B%AE%E6%A1%86%E5%9B%BE.jpg)
b. 将在Linux运行环境下的AprilTag视觉定位算法移植到ZYNQ上的单核ARM Cortex A53中，操作系统选择裸机，并对其进行优化和裁剪。  
c. 将AprilTag仿真调试图像输出到显示屏，来展示AprilTag标签是如何被一步步识别到并输出定位信息的，包括自适应阈值分割、Union-Find联通域查找、边缘分割、PCA主成分分析、四边形匹配、边缘细化、解码、单应矩阵计算以及外参估计等流程，[演示视频](https://www.bilibili.com/video/BV1Hm4y1j76H)已上传到B站，欢迎观看。
d. 将仿真图片通过FatFs文件系统写入sd卡中，实例图像放在img文件夹下的debug文件夹中，图片的说明参考“图片说明.txt”文件。
## 1.4 未来工作计划
a. 更换成像质量更好的摄像头，通过降低图像噪点，减少本不该有的连通域，来提升算法的速度  
b. 在ZYNQ上的PS端，也就是ARM端上运行linux系统，通过双核ARM Cortex A53来现多线程运算。  
c. 在ZYNQ中的PL端，也就是FPGA端完成AprilTag算法中的某些图像处理算法的IP核设计，使部分算法可以并行计算。
# 2. 使用说明
## 2.1 硬件信息
本项目所使用的硬件平台为黑金公司生产的AXU2CGB开发板，ZYNQ芯片的具体型号为：xczu2cg-sfvc784-1-e，摄像头为黑金公司生产的AN5641摄像头模块，图像传感器芯片为豪威科技公司生产的OV5640芯片，AN5641通过mipi协议将图像数据传输到开发板，开发板通过dp协议将图像数据传输到显示屏，硬件实物图如下图所示。  
![图片文字描述](https://github.com/zhang-ranhao/AprilZynq/blob/master/img/%E7%A1%AC%E4%BB%B6%E5%AE%9E%E7%89%A9%E5%9B%BE.png)
## 2.2 Vivado软件部分  
在Vivado文件夹中，提供了工程文件.xpr文件，由于该工程文件是在Vivado 2020.1版本下创建的，如果您使用是低版本的Vivado软件，则只能以只读方式打开.xpr文件，如果您使用的是高版本的Vivado软件，则需要更新IP核或者更换掉已经停产的IP核，如果可以正常打开，您在Block Design中将看到如下图所示的BD设计项目，您需要自行进行综合，布局布线以及生成比特流文件等操作。  
![图片文字描述](https://github.com/zhang-ranhao/AprilZynq/blob/master/img/Vivado%20BD%E8%AE%BE%E8%AE%A1%E5%9B%BE.jpg)
## 2.3 Vitis软件部分
您需要使用vitis文件夹中的design_1_wrapper.xsa文件来建立vitis工程，项目源代码放在src文件夹下，在创建好vitis工程后，您还需要进行一些设置，才能保证编译成功，[操作教程](https://www.bilibili.com/video/BV1394y1i7DR)已上传到B站，欢迎观看








