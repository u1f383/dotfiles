#!/usr/bin/python3

from pwn import *
from sys import argv

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