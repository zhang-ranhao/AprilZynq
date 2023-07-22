# AprilZynq
## 1. 项目名称
基于Zynq UltraScale+ MPSoC的AprilTag算法硬件加速器设计
## 2. 项目背景
本项目来源于本人研究生一年级所负责的项目：[陆空两栖可重构机器人“比翼鸟”](https://www.bilibili.com/video/BV1ch4y1E77Y)。在该项目中，两架无人机的自主对接用到了[AprilTag](https://april.eecs.umich.edu/software/apriltag)这一视觉基准系统，该视觉基准系统被应用于增强现实、机器人视觉定位以及相机标定等领域。
[AprilTag](https://april.eecs.umich.edu/software/apriltag)是一种视觉基准系统，可用于增强现实，机器人定位和相机标定等领域，但这一视觉定位算法在诸如[OpenMV4](https://openmv.io/)等单片机上的运行速度不够快，在分辨率为QVGA时（320×240）时，其数据更新频率仅有8Hz，当我们

