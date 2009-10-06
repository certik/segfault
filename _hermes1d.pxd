cdef extern from "math.h":

    double c_sqr "sqr"(double x)
    double c_sqrt "sqrt"(double x)
    double c_atan "atan"(double x)
    double c_pi "M_PI"

cdef extern from "stdlib.h":

    ctypedef unsigned long size_t
    void *malloc (size_t size)
    void free(void *mem)
    void *memcpy(void *dst, void *src, long n)

    void exit(int exit_code)

cdef extern from "arrayobject.h":

    ctypedef int intp

    ctypedef extern class numpy.ndarray [object PyArrayObject]:
        cdef char *data
        cdef int nd
        cdef intp *dimensions
        cdef intp *strides
        cdef int flags

cdef extern from "Python.h":
    ctypedef void PyObject
    void Py_INCREF(PyObject *x)
    void Py_DECREF(PyObject *x)
