t=5:0.001:5;
f1= cos(30*t).*(stepfun(t, -2.5)-stepfun(t, 2.5));
f2=stepfun(t, 0)-stepfun(t, 4);
f= conv(f1,f2);
t1=5:0.0005:5;
plot(tl, f)