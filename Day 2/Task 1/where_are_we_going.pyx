import cython

def get_coordinates():
    cdef int horizontal_position = 0, depth = 0
    while True:
        command, number = input().split(" ")
        number = int(number)
        if command == "forward":
            horizontal_position += number
        elif command == "up":
            depth -= number
        elif command == "down":
            depth += number
        else:
            return horizontal_position * depth

