def test():
    cdef npy_intp size
    cdef ndarray newarr
    cdef double *arrsource

    size = 10
    arrsource = <double *>malloc(sizeof(double) * size)
    newarr = PyArray_SimpleNewFromData(1, &size, 12, <void *>arrsource)

    return newarr
