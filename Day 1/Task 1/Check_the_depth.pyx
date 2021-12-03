def check_depth():
    cdef int current_depth, last_depth, result
    result = 0
    last_depth = int(input())
    while current_depth != -3000:
        current_depth = int(input())
        if current_depth > last_depth:
            result += 1
        last_depth = current_depth
    return result

