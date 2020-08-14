%Ballistic Deposition
% Periodic bounderies is considered in this code.
% input
% L: lattice size
% T: number of drops in the lattice
% e: ensembles

clear
tic
L=100;
T=500000;
e=200;
    r(1:L)=(1:L)+1;r(L)=1;
    l(1:L)=(1:L)-1;l(1)=L;
    W=zeros(e,1000);
    m=0;
    for E=1:e
        m=m+1
        H=zeros(1,L);
        for t=1:T
            A=randi([1,L]);
            h=[H(l(A)) H(A)+1 H(r(A))];
            H(1,A)=max(h);
            if rem(t,500)==0
            W(E,t/500)=std(H);
            ts(1,t/500)=t;
            end
        end
    end
W1=mean(W);
toc
lt=log(ts);
lw=log(W1);
plot(lt,lw);
