from depth_rolling_window import get_data, calculate_result

if __name__ == "__main__":
    data = get_data()
    result = calculate_result(data)
    print(result)