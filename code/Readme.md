### 代码运行说明

1. 将src文件夹中更新内容拷贝到本地ros文件夹下

2. 到ros文件夹目录

   ```c
   $ catkin_make
   $ source ./devel/setup.bash
   $ roslaunch wpr_simulation myrobot.launch
   ```

   **PS：以上两步为仿真必备工作**

   **重要说明：**仿真过程如果有模型无法加载，将model文件夹内容复制粘贴到/home/.gazebo/model中

4. 打开另一个cmd，到ros文件夹目录

   ```
   $ source ./devel/setup.bash
   $ rosrun ...
   ```

------

### 本次更新说明

修改 **wpb_simple.launch** 文件中的地图加载函数	- 2020.05.23

细化仓库机器人应用场景(仓库实景图)，构造仓库地图 **worlds/warehouse.world**   - 2020.05.24 00:20

将 **wpb_simple.launch** 和 **myrobot.launch** 合并成一个文件 **myrobot.launch**

更新仓库仿真地图，结构如仓库实景图所示	- 2020.05.25 17:12

------

### 下一步计划

调整 **worlds/navigation.world** 文件，使仿真环境能够模拟仓库场景	- 2020.05.23

**warehouse.world** 添加沙发、桌子、货物、货架等构件，并进行建图、路径规划测试   - 2020.05.24 00:20

在新仿真地图中，测试建图、路径规划功能，完成目标物识别和抓取代码	- 2020.05.25 17:12