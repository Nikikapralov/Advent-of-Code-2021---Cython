import cython
cimport numpy as cnp
import numpy as np

def get_data():
    cdef cnp.ndarray data = np.empty(1000, dtype=object)
    for i in range(data.shape[0]):
        current = input()
        data[i] = current
    return data


def diagnostic(cnp.ndarray data):
    cdef Py_ssize_t line, current_entry_idx
    cdef object entry = data[0]
    cdef str bit
    cdef cnp.ndarray current_most_common
    cdef cnp.ndarray most_common_gamma = np.empty(12, dtype=object)
    cdef cnp.ndarray most_common_epsilon = np.empty(12, dtype=object)
    cdef int one, zero

    for line in range(len(entry)):
        current_most_common = np.empty(1000, dtype=str)
        for current_entry_idx in range(data.shape[0]):
            bit = data[current_entry_idx][line]
            current_most_common[current_entry_idx] = bit
        zero = (current_most_common == "0").sum()
        one = (current_most_common == "1").sum()
        if zero > one:
            most_common_gamma[line] = "0"
            most_common_epsilon[line] = "1"
        else:
            most_common_gamma[line] = "1"
            most_common_epsilon[line] = "0"
    return most_common_epsilon, most_common_gamma





