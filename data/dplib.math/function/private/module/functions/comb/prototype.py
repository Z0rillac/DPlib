def comb(n, k):
    if k > n:
        return 0
    if k == 0 or k == n:
        return 1
    
    test = n
    test //= 2
    if k > test:
        n_k = n
        n_k -= k
        k = n_k

    res = 1
    i = 0
    while i < k:
        n_i = n
        n_i -= i
        i1 = i
        i1 += 1
        res *= n_i
        res //= i1
        i += 1
    print(i)
    return res