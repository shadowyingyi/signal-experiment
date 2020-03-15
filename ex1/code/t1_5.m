for t=-20:0
    f =7*(0.6^t)*cos(0.9*pi*t);
    stem(t,f,'lineWidth',3);
    hold on
end