g=-5:0.001:5;
t=4-g.*2;
f=heaviside(t+1)-heaviside(t-1)+heaviside(t+2)-heaviside(t-2);
f=diff(f, 1);
plot(g(1:end-1), f);
