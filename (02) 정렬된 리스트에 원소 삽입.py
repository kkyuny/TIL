def solution(L, x):
    answer = []
    for i in range(len(L)):
        if L[i] == x:
            answer.append(i)
    if len(answer) == 0:
        return [-1]
    return answer
