import numpy as np
from scipy.linalg import ldl

a = np.array([
        [4.47600000000000, 0.333999999999992,0.229999999999999],
        [0.33399999999999, 1.14600000000001  ,0.08200000000000],
        [0.22999999999999, 0.082000000000001, 0.62600000000000]
    ])

lu,d, perm=ldl(a,lower=1);

print(a)

print(lu)

print(d)

invd=np.linalg.inv(np.sqrt(d))

print(invd)
#
#L1=np.dot(lu,np.sqrt(d))
#
#LL=np.dot(L1,invd)
#
#print(LL)
