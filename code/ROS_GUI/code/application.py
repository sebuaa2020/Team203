#coding=utf-8
import tkinter as tk
import tkinter.messagebox
from ROS_GUI.code.login_parse import is_authenticated, is_registered, register
from ROS_GUI.code.exceptions import *

from ROS_GUI.code.login_parse import is_authenticated, is_registered, register
from ROS_GUI.code.exceptions import *
from ROS_GUI.code.roscmd import *

class Application(tk.Tk):
    def __init__(self):
        super().__init__()
        self.title('仓库机器人分拣系统')

        self.screen_width = self.winfo_screenwidth()  # 屏幕宽度
        self.screeh_height = self.winfo_screenheight()  # 屏幕高度
        self.frames = {}

        for F in (PageLogin, PageHome, PageMapCreate, PageVoiceControl, PagePathPlanning, PageControl):
            frame = F(self)
            self.frames[F] = frame
            frame.grid(row=0, column=0, sticky='nsew')

        self.show_frame(PageLogin)

    def show_frame(self, page_name):
        # 显示当前页面
        frame = self.frames[page_name]
        frame.tkraise()

        # 将窗口居中，登录页面是406x420, 其他页面是400x400
        window_width, window_height = 400, 400
        if page_name == PageLogin:
            window_width, window_height = 406, 420

        x = (self.screen_width - window_width) / 2
        y = (self.screeh_height - window_height) / 2
        self.geometry('%dx%d+%d+%d' % (window_width, window_height, x, y))


class PageLogin(tk.Frame):
    def __init__(self, master=None):
        super().__init__(master)
        page_label = tk.Label(self, text="用户登录")
        page_label.grid(row=0, column=1)

        # 图片显示
        image_file = tk.PhotoImage(file='ROS_GUI/static_resource/login.gif')
        image_label = tk.Label(self, image=image_file)
        image_label.image = image_file
        image_label.grid(row=1, columnspan=3)

        # 用户名和密码的label与entry
        var_username = tk.StringVar()
        var_password = tk.StringVar()

        tk.Label(self, text='Username').grid(row=2, column=0)
        tk.Label(self, text='Password').grid(row=3, column=0)

        entry_username = tk.Entry(self, textvariable=var_username)
        entry_username.grid(row=2, column=1)
        entry_password = tk.Entry(self, textvariable=var_password, show='*')
        entry_password.grid(row=3, column=1)

        # 登录和注册
        def user_sign_in():
            username = entry_username.get()
            password = entry_password.get()
            try:
                if is_authenticated(username, password):
                    master.show_frame(PageHome)
                else:
                    tk.messagebox.showinfo('提示', '用户不存在或密码不正确')
            except AuthenticationIllegalException:
                tk.messagebox.showwarning('警告', '用户数据库被非法修改，请联系管理员')

        def user_sign_up():
            # 注册页面
            window_sign_up = tk.Toplevel(self.master)
            window_width = 350
            window_height = 200
            x = (master.screen_width - window_width) / 2
            y = (master.screeh_height - window_height) / 2
            window_sign_up.geometry('%dx%d+%d+%d' % (window_width, window_height, x, y))
            window_sign_up.title('Sign up window')

            new_user_name = tk.StringVar()
            tk.Label(window_sign_up, text='User name:').place(x=10, y=10)
            entry_sign_up_username = tk.Entry(window_sign_up, textvariable=new_user_name)
            entry_sign_up_username.place(x=150, y=10)

            new_pass_word = tk.StringVar()
            tk.Label(window_sign_up, text='Password:').place(x=10, y=50)
            entry_sign_up_password = tk.Entry(window_sign_up, textvariable=new_pass_word, show='*')
            entry_sign_up_password.place(x=150, y=50)

            new_pass_confirm = tk.StringVar()
            tk.Label(window_sign_up, text='Confirm password:').place(x=10, y=90)
            entry_sign_up_confirm = tk.Entry(window_sign_up, textvariable=new_pass_confirm, show='*')
            entry_sign_up_confirm.place(x=150, y=90)

            def sign_up():
                register_username = entry_sign_up_username.get()
                origin_password_signed_up = entry_sign_up_password.get()
                confirm_password_signed_up = entry_sign_up_confirm.get()

                if is_registered(register_username):
                    tk.messagebox.showinfo('提示', '该用户名已被注册')
                elif origin_password_signed_up != confirm_password_signed_up:
                    tk.messagebox.showinfo('提示', '两次需输入相同密码')
                else:
                    register(register_username, origin_password_signed_up)
                    tk.messagebox.showinfo('提示', '注册成功！')
                    window_sign_up.destroy()

            button_confirm = tk.Button(window_sign_up, text='注册', command=sign_up)
            button_confirm.place(x=150, y=130)

        button_sign_in = tk.Button(self, text="登录", command=user_sign_in)
        button_sign_in.grid(row=4, column=1)

        button_sign_up = tk.Button(self, text='注册', command=user_sign_up)
        button_sign_up.grid(row=4, column=2, sticky='w')


class PageHome(tk.Frame):
    def __init__(self, master):
        super().__init__(master)
        page_label = tk.Label(self, text="主页")
        page_label.place(x=180, y=0)

        button_cancel = tk.Button(self, text="注销", command=lambda: master.show_frame(PageLogin)).grid(row=0, column= 0)
        button_control = tk.Button(self, text="移动控制", command=lambda: master.show_frame(PageControl)).place(x=170, y=30)
        button_map = tk.Button(self, text="地图建立", command=lambda: master.show_frame(PageMapCreate)).place(x=170, y=60)
        button_path = tk.Button(self, text="路径规划", command=lambda: master.show_frame(PagePathPlanning)).place(x=170, y=90)
        button_voice = tk.Button(self, text="语音播报", command=lambda: master.show_frame(PageVoiceControl)).place(x=170, y=120)


class PageControl(tk.Frame):
    def __init__(self, master):
        super().__init__(master)
        page_label = tk.Label(self, text="移动控制")
        page_label.place(x=170, y=0)
        button1 = tk.Button(self, text="注销", command=lambda: master.show_frame(PageLogin)).grid(row=0, column=7)
        button2 = tk.Button(self, text="地图建立", command=lambda: master.show_frame(PageMapCreate)).grid(row=5, column=3)
        button_cancel = tk.Button(self, text="返回主页", command=lambda: master.show_frame(PageHome)).place(x=0, y=0)
        button_forward = tk.Button(self, text="前").place(x=190, y=40)
        button_back =  tk.Button(self, text="后").place(x=190, y=90)
        button_left = tk.Button(self, text="左").place(x=165, y=65)
        button_right = tk.Button(self, text="右").place(x=215, y=65)
        button_stop= tk.Button(self, text="停").place(x=190, y=65)
        button3 = tk.Button(self, text="注销", command=lambda: master.show_frame(PageLogin)).grid(row=0, column=7)


class PageMapCreate(tk.Frame):
    def __init__(self, master):
        super().__init__(master)
        page_label = tk.Label(self, text="地图建立")
        page_label.place(x=170, y=0)

        button_cancel = tk.Button(self, text="返回主页", command=lambda: master.show_frame(PageHome)).place(x=0, y=0)
        button_createMap= tk.Button(self, text="建图",command=RosBuildMap).place(x=180, y=50)
        button_control = tk.Button(self, text="移动控制", command=lambda: master.show_frame(PageControl)).place(x=170, y=80)
        button_saveMap = tk.Button(self,text="保存地图",command=RosSaveMap).place(x=170,y=110)

class PagePathPlanning(tk.Frame):
    def __init__(self, master):
        super().__init__(master)
        page_label = tk.Label(self, text="路径规划")
        page_label.place(x=170, y=0)

        button_cancel = tk.Button(self, text="返回主页", command=lambda: master.show_frame(PageHome)).place(x=0, y=0)
        button_start = tk.Button(self, text="Start").place(x=180, y=50)


class PageVoiceControl(tk.Frame):
    def __init__(self, master):
        super().__init__(master)
        page_label = tk.Label(self, text="语音播报")
        page_label.place(x=170, y=0)

        button1 = tk.Button(self, text="返回主页", command=lambda: master.show_frame(PageHome)).place(x=0, y=0)
        button_start = tk.Button(self, text="Start").place(x=180, y=50)
