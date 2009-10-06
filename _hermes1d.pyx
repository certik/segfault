def test():
    cdef npy_intp size
    cdef ndarray newarr
    cdef double *arrsource

    size = 10
    arrsource = <double *>malloc(sizeof(double) * size)
    print "I am still alive"
    newarr = PyArray_SimpleNewFromData(1, &size, NPY_DOUBLE, <void *>arrsource)
    print "I am dead."

    return newarr
