%Random Deposition
% input
% L = lattice size
% t = number of drops

clear
tic
L=3000;
t=5000;
H=zeros(1,L);
W=zeros(1,t);
for i=1:t
    a=randi([1,L]);
    H(1,a)=H(1,a)+1;
W(1,i)=std(H);
end
T=1:t;
l=1:L;
f=polyfit(log(T),log(W),1)
v=polyval(f,log(T));
plot(log(T),log(W),log(T),v);
xlabel('logT');ylabel('logW');title('random deposition');
hleg=legend('data','0.5037x-4.0297');
set(hleg,'location','NorthWest');
