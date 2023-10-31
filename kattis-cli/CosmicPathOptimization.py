def average(numOfT: int, temps: list[int]) -> int:
    sum = 0
    for i in temps:
        sum += i
    avg = sum/int(numOfT)
    return int(avg)


if __name__ == "__main__":
    numOfTemps = int(input())
    listOfTemps = list(map(int, input().split()))
    print(average(numOfTemps, listOfTemps))
