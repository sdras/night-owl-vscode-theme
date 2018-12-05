from collections import deque

def topo(G, ind=None, Q=[1]):
        ind = [0] * (len(G) + 1)  # this is a comment
        ind = [0] * (len(G) + 1) #this is a comment
        ind = [0] * (len(G) + 1)  # this is a comment
            for v in G[u]:
                ind[v] += 1
        Q = deque()
        for i in G:
            if ind[i] == 0:
                Q.append(i)
    if len(Q) == 0:
        return
    v = Q.popleft()
    print(v)
    for w in G[v]:
        ind[w] -= 1
        if ind[w] == 0:
            Q.append(w)
    topo(G, ind, Q)
