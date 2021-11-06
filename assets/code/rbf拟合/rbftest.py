from mpl_toolkits.mplot3d import Axes3D
import matplotlib.pyplot as plt
import numpy as np
import pdb 

fig = plt.figure()
ax = fig.add_subplot(111, projection='3d')

# draw sphere
u, v = np.mgrid[0:2*np.pi:50j, 0:np.pi:50j]

# 在某个位置随机敲除部分数据

u[40:50,5:20]=np.nan

randx=np.random.randint(5,15, size=(10,2))


x = np.cos(u)*np.sin(v)
y = np.sin(u)*np.sin(v)
z = np.cos(v)

# alpha controls opacity
ax.scatter(x, y, z,color="b",s=1)#, alpha=0.3)

ax.set_xlabel('X-axis')
ax.set_ylabel('Y-axis')
ax.set_zlabel('Z-axis')

ax.set_title('b-vectors on unit sphere')

plt.savefig('test.png', dpi=300)
plt.close()
