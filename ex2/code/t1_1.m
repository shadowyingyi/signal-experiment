t=5:0.001:5;
f1=stepfun(t, 0)-stepfun(t, 1);
f2= 2*t *(stepfun(t, 0)-stepfun(t, 1));
f= cony(f1, f2);
t1=-5:0.0005:5;
plot(tl, f);