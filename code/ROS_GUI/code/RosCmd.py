from multiprocessing import Process
import os
import time
def ping_cmd():
    os.system("ping www.baidu.com")

def mkdir_cmd():
    os.system("mkdir test")

def RosBuildMap():
    print("Building map")

    p1 = Process(target=ping_cmd)
    p2 = Process(target=mkdir_cmd)

    p1.start()
    time.sleep(5)
    p2.start()

def RosSaveMap():
    pass
