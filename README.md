### ROS机器人开发

## git 管理

代码开发阶段，每个小组成员在自己的分支上进行编码。阶段性任务完成后将自己的工作和master分支合并。

第一次克隆远程仓库时由于网速受限较为耗时(下一年)。后续push代码时还算迅速。

主要操作为：

克隆并添加远程仓库

```
$ git clone [url]
$ cd  Team203
$ git remote add origin [url]
$ git pull origin master
```

创建和切换分支

```
$ git branch [branchname]
$ git checkout [branchname]
```

在自己的分支上提交工作

```
# some working
$ git commit -m "message"
$ git push origin [branchname]
```

分支合并（阶段性任务完成后）

```
$ git checkout master
$ git pull
$ git merge [branchname]
$ git push origin master
```



