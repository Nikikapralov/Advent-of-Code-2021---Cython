import cython

def get_coordinates():
    cdef int horizontal_position = 0, depth = 0, aim = 0
    while True:
        command, number = input().split(" ")
        number = int(number)
        if command == "forward":
            horizontal_position += number
            depth += aim * number
        elif command == "up":
            aim -= number
        elif command == "down":
            aim += number
        else:
            return horizontal_position * depth




