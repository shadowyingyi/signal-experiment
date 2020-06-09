syms t;
f=1/(t+2);
subplot(2,2,1);
F=laplace(f);
ezplot(F)
A1=[0 0 1 2];
B1=[1 1 2 6];
subplot(2,2,2)
zplane(A1,B1);
grid on;

A2=[0 1 0 1];
B2=[3 5 4 6];
subplot(2,2,4)
zplane(A2,B2);