PYTHON = /usr/include/python2.6
NUMPY = /home/ondrej/usr/lib/python/numpy/core/include/numpy/

all:
	cython _hermes1d.pyx
	gcc -I$(PYTHON) -I$(NUMPY) -c -o _hermes1d.o _hermes1d.c
