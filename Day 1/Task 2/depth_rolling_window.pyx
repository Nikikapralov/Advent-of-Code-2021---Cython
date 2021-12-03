import numpy as np
cimport numpy as cnp
cnp.import_array()
def get_data():
    cdef int measurement, idx
    cdef cnp.int32_t[::1] depth_measurements = np.zeros([2000], dtype=np.int32)
    for idx in range(depth_measurements.shape[0]):
        measurement = int(input())
        depth_measurements[idx] = measurement
    return np.asarray(depth_measurements)

def calculate_result(cnp.ndarray[cnp.int32_t, ndim=1] depth_measurements):
    cdef int previous_start = 0, previous_end = 3, result = 0
    cdef int current_start = 1, current_end = 4
    cdef int current_rolling_sum, previous_rolling_sum
    while True:
        if depth_measurements[current_start:current_end].shape[0] < 3:
            return result
        previous_rolling_sum = np.sum(depth_measurements[previous_start:previous_end])
        current_rolling_sum = np.sum(depth_measurements[current_start:current_end])
        if previous_rolling_sum < current_rolling_sum:
            result += 1
        previous_start = current_start
        previous_end = current_end
        current_start += 1
        current_end += 1





