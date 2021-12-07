from binary_diagnostic import get_data, diagnostic

if __name__ == '__main__':
    data = get_data()
    epsilon, gamma = diagnostic(data)
    epsilon = int("".join(epsilon), 2)
    gamma = int("".join(gamma), 2)
    print(epsilon * gamma)
