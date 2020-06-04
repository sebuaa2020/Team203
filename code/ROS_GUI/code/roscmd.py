import subprocess
from multiprocessing import Process


import os
import sys
import time
import threading
def os_run_cmd(cmd_list):
    os.chdir("/home/watsonyang/catkin_ws")

    os.system(cmd_list)

class KeyboardCmd:

    def __init__(self):
        os.chdir("/home/watsonyang/catkin_ws")
        os.system("catkin_make")
        os.system("source ./devel/setup.bash")
        cmd = "rosrun wpr_simulation keyboard_vel_ctrl"
        #cmd = "./a.out"
        self.process = subprocess.Popen(cmd,shell=True,stdin=subprocess.PIPE,stdout=sys.stdout)
        # while True:
        #     nextline = self.process.stdout.readline()
        #     sys.stdout.write(nextline)
        #     if nextline=='':
        #         break

    def towards(self):
        #self.process.stdin.write('w\n'.encode('ascii'))
        #sys.stdin.write('w\n')

        self.process.communicate(input='wwwwwwwwwwwwwwwwwwww'.encode())

        #print(out)




class MapCmd():
    def __init__(self):

        os.chdir("/home/watsonyang/catkin_ws")
        #os.system("catkin_make")
        os.system("source ./devel/setup.bash")

        p1 = Process(target=os_run_cmd,args=("roslaunch wpr_simulation wpb_simple.launch",))
        p2 = Process(target=os_run_cmd,args=("roslaunch wpr_simulation wpb_rviz.launch",))

        p1.start()
        time.sleep(5)
        p2.start()

class NaviCmd():
    def __init__(self):

        os.chdir("/home/watsonyang/catkin_ws")
        #os.system("catkin_make")
        os.system("source ./devel/setup.bash")
        p1 = Process(target=os_run_cmd,args=("roslaunch wpr_simulation wpb_simple.launch",))
        #os.system("gnome-terminal -e 'bash -c \"roslaunch wpr_simulation wpb_simple.launch; exec bash\"'")
        p2 = Process(target=os_run_cmd,args=("roslaunch wpr_simulation wpb_rviz.launch",))
        p1.start()
        time.sleep(7)
        p2.start()

if __name__=="__main__":
    # kbc = KeyboardCmd()
    # kbc.towards()
    #kbc.backward()
    mapCmd = MapCmd()
