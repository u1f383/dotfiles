import gdb
import os
from subprocess import check_output

def get_pid(name):
    return check_output(["pidof", "-s", name])

class attach_proc(gdb.Command):
    def __init__(self):
        super(self.__class__, self).__init__("at", gdb.COMMAND_USER)

    def invoke(self, args, from_tty):
        try:
            pid = get_pid(gdb.objfiles()[0].filename)
            gdb.execute(f'attach {pid}')
        except:
            raise gdb.GdbError('attach failed')

attach_proc()