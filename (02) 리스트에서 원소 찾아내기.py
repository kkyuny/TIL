def solution(L, x):    
    for i in L:
        if x == i:
            return L
        elif x < i:
            L.insert(L.index(i),x)        
            return L
    L.append(x)
    return L
