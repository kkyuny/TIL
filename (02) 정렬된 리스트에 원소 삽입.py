def solution(L, x):
    if x < L[0]:
        L.insert(0,x)
    else:
        for i in L:
            if x < i:
                L.insert(L.index(i),x)        
    return L
