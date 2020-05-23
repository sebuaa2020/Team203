### 代码运行说明

1. 将src文件夹中更新内容拷贝到本地ros文件夹下

2. 到ros文件夹目录

   ```c
   $ catkin_make
   $ source ./devel/setup.bash
   $ roslaunch wpr_simulation wpb_simple.launch
   ```

3. 打开另一个cmd，到ros文件夹目录

   ```
   $ source ./devel/setup.bash
   $ roslauch wpr_simulation wpb_rviz.launch
   ```

   **PS：以上两步为仿真必备工作**

4. 打开另一个cmd，到ros文件夹目录

   ```
   $ source ./devel/setup.bash
   $ rosrun ...
   ```

------

### 本次更新说明

修改 **wpb_simple.launch** 文件中的地图加载函数

------

### 下一步计划

调整 **worlds/navigation.world** 文件，使仿真环境能够模拟仓库场景