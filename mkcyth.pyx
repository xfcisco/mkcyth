#!/usr/bin/python3
from sys import argv;
from os import system;

pyx = argv[1];
out = argv[2];

print("Converting from pyx to C...");
system(f"cython3 {pyx}.pyx --embed");


print("Compiling...");
system(f"gcc -Os -I /usr/include/python3.8 {pyx}.c -lpython3.8 -o {out}");

print("Cleaning up...");
system(f"rm {pyx}.c");
