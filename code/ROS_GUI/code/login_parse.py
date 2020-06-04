import numpy as np

from ROS_GUI.code.exceptions import *


parsed = False
brochure = dict()
path_route = 'ROS_GUI/static_resource/user_authentication'


def is_parsed():
    return parsed


def is_authenticated(username, password):
    if is_parsed() is not True:
        parse_authentication_file()

    if username in brochure.keys() and brochure[username] == password:
        return True
    return False


def is_registered(username):
    if is_parsed() is not True:
        parse_authentication_file()

    if username in brochure.keys():
        return True
    return False


def parse_authentication_file():
    file = open(path_route, 'r')
    rows = file.readlines()
    line = 1
    temp_key = ''
    for row in rows:
        row = row.replace('\n', '').replace('\r', '')
        if len(row) <= 2:
            continue
        if line % 2 == 1:
            if row[0:2] != 'u:':
                raise AuthenticationIllegalException
            temp_key = row[2:]
        else:
            if row[0:2] != 'p:':
                raise AuthenticationIllegalException
            brochure[temp_key] = row[2:]
        line += 1

    global parsed
    parsed = True
    print(brochure)


def register(username, password):
    file = open(path_route, 'a')
    file.write('\nu:' + username + '\np:' + password)
    file.close()
    global parsed
    parsed = False
