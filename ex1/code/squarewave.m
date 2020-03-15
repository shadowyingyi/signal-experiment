function Sum = squarewave(n)
    t = linspace(0, 4 * pi, 1001)
    k = 1:n;
    for i = 1:1001
        Sum(i) = sum( sin((2 * k - 1) * t(i)) ./ ( 2 * k - 1));
    end
end
