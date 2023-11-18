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
b站传送门：[基于ZYNQ的AprilTag视觉定位算法加速技术研究——飞驰像素团队](https://pan.baidu.com/s/1F9494MlhsoMT4jrLgKMgSw?pwd=uhrl)
## 1.2 项目背景
本项目来源于本人研究生一年级所负责的项目：[陆空两栖可重构机器人“比翼鸟”](https://pan.baidu.com/s/1i5rdFPUtcTAc313ae5pl1Q?pwd=799f)，机器人实物图如下图所示。  
![图片文字描述](https://github.com/zhang-ranhao/AprilZynq/blob/master/img/%E6%9C%BA%E5%99%A8%E4%BA%BA%E5%AE%9E%E7%89%A9%E5%9B%BE.png)
在该项目中，为了完成两架无人机的自主对接，我们采用了[AprilTag](https://april.eecs.umich.edu/software/apriltag)视觉基准系统和[OpenMV4](https://openmv.io/)摄像头模块来搭建视觉定位系统，我们希望无人机在更高的高度下也能稳定识别到AprilTag标签，所以将摄像头分辨率从QQVGA(160×120)提高到VGA(640×480)，但此时视觉定位数据的刷新频率小于1Hz，无法满足无人机精确位置控制环所要求的数据更新频率。基于此，本项目旨在利用Zynq UltraScale+ MPSoC这一ARM+FPGA架构的硬件平台对该算法进行加速，以满足实时性要求。
## 1.3 目前工作进度
（1）已搭建好基于的ZYNQ的图像采集与处理系统，实现对来自OV5640摄像头的视频图像的实时采集、存储、预处理与显示，如下图框图所示。  
![图片文字描述](https://github.com/zhang-ranhao/AprilZynq/blob/master/img/%E7%B3%BB%E7%BB%9F%E6%95%B0%E6%8D%AE%E6%B5%81%E6%A1%86%E5%9B%BE.png)
（2）我们成功将AprilTag算法部署到PS端中的ARM核上，并完成相机标定工作，使其能够输出高精度的六自由度位姿信息。  
（3）将AprilTag仿真调试图像输出到显示屏，来展示AprilTag标签是如何被一步步识别到并输出定位信息的，包括自适应阈值分割、Union-Find联通域查找、边缘分割、PCA主成分分析、四边形匹配、边缘细化、解码、单应矩阵计算以及外参估计等流程，[演示视频](https://www.bilibili.com/video/BV1Hm4y1j76H)已上传到B站，欢迎观看。  
（4）我们采用流水线以及并行计算等思想，成功在PL端实现了AprilTag算法中的降采样、高斯模糊以及自适应阈值分割等图像处理算法，并将其封装为子模块接入到系统中，结果显示，我们取得了较为明显的加速效果。总结，算法在PS端的总运行时间时间为234ms，在经过FPGA加速后，减少为119ms，运行速度提升为原来的1.97倍，对于1280×720的实时视频流数据，算法的最终处理速度为8.4帧/秒。
## 1.4 未来工作计划  
（1）在ZYNQ中的PL端，实现AprilTag算法中的其余部分，终极目标是在PL端实现全部AprilTag算法，算法更新频率达到50hz以上。  
（2）为使系统具有更好的扩展性和可移植性，尝试将PS端的裸机系统更换为Linux操作系统。
# 2. 使用说明
## 2.1 硬件信息
本项目所使用的硬件平台为黑金公司生产的AXU2CGB开发板，ZYNQ芯片的具体型号为：xczu2cg-sfvc784-1-e，摄像头为黑金公司生产的AN5641摄像头模块，图像传感器芯片为豪威科技公司生产的OV5640芯片，AN5641通过mipi协议将图像数据传输到开发板，开发板通过DP协议将图像数据传输到显示屏，硬件实物图如下图所示。  
![图片文字描述](https://github.com/zhang-ranhao/AprilZynq/blob/master/img/%E4%BD%9C%E5%93%81%E5%85%A8%E8%B2%8C%E5%9B%BE.png)
## 2.2 Vivado软件部分  
Vivado部分位于pl文件夹下，其中降采样、高斯模糊、自适应阈值分割的文件名称分别为De_Resolution,GaussBlur,Th_Seg，而连通域查找的代码文件位于uf文件夹下，暂时未接入系统中
![图片文字描述](https://github.com/zhang-ranhao/AprilZynq/blob/master/img/FPGA%E9%A1%B9%E7%9B%AE%E6%A1%86%E5%9B%BE.bmp)
## 2.3 Vitis软件部分
您需要使用ps文件下的top.xsa文件来建立vitis工程，项目源代码放在src文件夹下，在创建好vitis工程后，您还需要进行一些设置，才能保证编译成功，[操作教程](https://www.bilibili.com/video/BV1394y1i7DR)已上传到B站，欢迎观看。








