def solution(L, x):
    answer = -1
    left = 0
    right = len(L) - 1
    while left <= right:
        mid = (left + right)//2
        if x == L[mid]:
            return mid
        elif x < L[mid]:
            right = mid - 1
        else:
            left = mid + 1     
    return answer
