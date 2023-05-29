import os
import sys
import struct
from ctypes import *
import webbrowser


def is_admin():
    try:
        admin = os.getuid() == 0
    except AttributeError:
        admin = windll.shell32.IsUserAnAdmin() != 0
    return admin


def is_python3():
    if sys.version_info[0] < 3:
        return False
    return True


def get_python():
    webbrowser.open('https://www.python.org/ftp/python/3.11.3/python-3.11.3-amd64.exe')


def get_python_arch():
    return (8 * struct.calcsize("P"))


