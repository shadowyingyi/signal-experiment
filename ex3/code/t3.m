syms s t;
b = conv([1, 1], [1, 4]);
a = conv(conv([1, 0], [1, 2]), [1, 3]);
[r, p, k] = residue(b, a);
h1 = ilaplace(r(1) / (s - p(1)), t);
h2 = ilaplace(r(2) / (s - p(2)), t);
h3 = ilaplace(r(3) / (s - p(3)), t);
h = h1 + h2 + h3
