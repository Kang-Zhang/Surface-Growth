% in this code you will see the growth of surface in ballestic deposition
% input
% L = lattice size
% h = the height of the lattice
% N = number of drops in the lattice
clear
tic
L=102;
h=100;
N=10000;
    p=zeros(h,L);
    p(h,:)=1;
for t=1:N
    k=randi([2,L-1]);
    a1=find(p(:,k),1);
    a2=find(p(:,k-1),1);
    a3=find(p(:,k+1),1);
    b=[a2 a1-1 a3];
    s=min(b);
    p(s,k)=1;
    pause(0.001)
    imagesc(p)
end
toc
