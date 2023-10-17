import sys
from typing import List


def average(numOfT: int, temps: List[int]) -> int:
    sum = 0
    for i in temps:
        sum += i
    avg = sum/int(numOfT)
    return int(avg)


if __name__ == "__main__":
    amount = sys.stdin.readline().strip()
    numOfTemps = int(amount)
    data_in = sys.stdin.readline().strip()
    listOfTemps = list(map(int, data_in.split()))
    print(average(numOfTemps, listOfTemps))
