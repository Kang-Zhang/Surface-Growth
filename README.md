# Surface-Growth
This repository contains two codes to simulate Ballestic Deposition and Random Deposition
### Ballestic Deposition
The BD model for a two-dimensional square lattice can be readily simulated on a 
personal computer. At time t, the height of the interface of site i is h(i, t). At t = 0, the 
interface is flat, so h(i,t) = 0 for i = 1,..., L. At any moment t we choose randomly a 
site i on the lattice and increase h(i,t) to h(i,t+1) = max[h(i-1,t), h(i,t)+l, h(i+1,t)]. 

### Codes
The first code `"Ballestic"` calculates the roughness of the interface where we could find the exponent beta ß and α which is called the "GROWTH EXPONENT" and "ROUGHNESS EXPONENT" respectively.
 
 The second code `"Ballestic_visual"` displays how the surface growth happend in Ballestic deposition
 
### Random Deposition
From a randomly chosen site over the surface, a particle falls vertically until it reaches the top 
of the column under it, whereupon it is deposited. Thus the simulation algorithm could hardly be simpler: we choose a column i randomly, and increase its height h(i,t) by one. 

### Code
The third code `"RD"` calculates the exponent ß which is called "GROWTH EXPONENT". 

reference

[FRACTAL CONCEPTS IN SURFACE GROWTH - Albert-Laszlo Barabasi](https://barabasi.com/book/fractal-concepts-in-surface-growth)
