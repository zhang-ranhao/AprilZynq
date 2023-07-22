# 1. 项目简述
## 1.1 项目名称
基于Zynq UltraScale+ MPSoC的AprilTag算法加速器设计
## 1.2 项目背景
本项目来源于本人研究生一年级所负责的项目：[陆空两栖可重构机器人“比翼鸟”](https://www.bilibili.com/video/BV1ch4y1E77Y)。在该项目中，为了完成两架无人机的自主对接，我们采用了[AprilTag](https://april.eecs.umich.edu/software/apriltag)视觉基准系统和[OpenMV4](https://openmv.io/)摄像头模块来搭建视觉定位系统，我们希望无人机在更高的高度下也能稳定识别到AprilTag标签时，所以将摄像头分辨率从QQVGA(160×120)提高到VGA(640×480)，但此时视觉定位数据的刷新频率小于1Hz，无法满足无人机精确位置控制环所要求的数据更新频率。基于此，本项目旨在利用Zynq UltraScale+ MPSoC这一ARM+FPGA架构的硬件平台对该算法进行加速，以满足实时性要求。
## 1.3 目前工作进度
a. 已搭建好基于的ZYNQ的图像采集与处理系统，实现对来自OV5640摄像头的视频图像的实时采集、存储、预处理与显示，如下图框图所示。  
![图片文字描述](https://github.com/zhang-ranhao/AprilZynq/blob/master/img/%E9%A1%B9%E7%9B%AE%E6%A1%86%E5%9B%BE.jpg)
b. 将在Linux运行环境下的AprilTag视觉定位算法移植到ZYNQ上的单核ARM Cortex A53中，操作系统选择裸机，并对其进行优化和裁剪。  
c. 将AprilTag仿真调试图像输出到显示屏，来展示AprilTag标签是如何被一步步识别到并输出定位信息的，包括自适应阈值分割、Union-Find联通域查找、边缘分割、PCA主成分分析、四边形匹配、边缘细化、解码等流程。展示视屏将在未来七日内上传到B站。
## 1.4 未来工作计划
a. 更换成像质量更好的摄像头，通过降低图像噪点，减少本不该有的连通域，来提升算法的速度  
b. 在ZYNQ上的PS端，也就是ARM端上运行linux系统，通过双核ARM Cortex A53来现多线程运算。
c. 在ZYNQ中的PL端，也就是FPGA端完成AprilTag算法中的某些图像处理算法的IP核设计，使部分算法可以并行计算。
# 2. 使用说明
## 2.1 硬件信息
本项目所使用的硬件平台为黑金公司生产的AXU2CGB开发板，ZYNQ芯片的具体型号为：xczu2cg-sfvc784-1-e，摄像头为黑金公司生产的AN5641摄像头模块，图像传感器芯片为豪威科技公司生产的OV5640芯片，AN5641通过mipi协议将图像数据传输到开发板，开发板通过dp协议将图像数据传输到显示屏。  






