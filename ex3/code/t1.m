syms t;
f1 = exp(-2 * abs(t));
F1 = fourier(f1)
subplot(1, 2, 1);
ezplot(F1);

grid on;

syms w;
F2 = 1 / (1 + w^2);
f2 = ifourier(F2, t)
subplot(1, 2, 2);
ezplot(f2);
