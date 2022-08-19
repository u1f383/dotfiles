#!/usr/bin/python3

from pwn import *
from sys import argv

context.arch = 'amd64'
context.terminal = ['tmux', 'splitw', '-h']
context.log_level = 'debug'

rop = {
     "pop_rdi_ret": 0,
     "pop_rsi_ret": 0,
     "pop_rdx_ret": 0,
     "syscall": 0,
}

HOST = ""
PORT = 0
BIN = ""
LIBC = ""

elf = ELF(BIN)
libc = ELF(LIBC)

if len(argv) > 1:
    # r = remote('localhost', PORT)
    r = remote(HOST, PORT)
else:
    r = process(BIN, env={"LD_PRELOAD": LIBC}, alsr=False)


# ------------ utils ------------


# ------------ exploit ------------


r.interactive()