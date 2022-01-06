def solution(L, x):
    answer = []
    if x not in L:
        return [-1]
    for i in L:
        if i == x:
            answer.append(L.index(x))            
            L[L.index(i)] = i - 1
    return answer
