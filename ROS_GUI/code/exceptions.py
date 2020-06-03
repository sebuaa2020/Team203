class AuthenticationIllegalException(Exception):
    def __init__(self):
        pass

    def __str__(self):
        print('用户名-密码数据库被非法更改，存在非法情况')
