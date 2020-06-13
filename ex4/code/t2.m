Fs = 44100;           
file = '2-in-hello-world.wav';

[x1,Fs] = audioread(file);%x1为所读取的音频数据,Fs为采样频率
sound(x1,Fs); %播放音乐
figure(1);
subplot(611);
plot(x1);%做原始语音信号的时域图形
title('原始语音信号')
xlabel('采样点 n');
ylabel('音量 n');

y1=fft(x1); %做length(x1)点的FFT
y1=fftshift(y1);%频率分量将会移到坐标中心
subplot(612);
plot(abs(y1));%画出原始语音信号的频谱图，这里保证了x轴的点数必须和y轴点数一致
title('原始采样频率44k的语音信号的频谱');

x=resample(x1,1,2);
sound(x,Fs/2);
y=fft(x);
y=fftshift(y);%频率分量将会移到坐标中心
subplot(613);
plot(abs(y));%画出原始语音信号的频谱图，这里保证了x轴的点数必须和y轴点数一致
title('采样频率22k的语音信号的频谱');


x=resample(x,1,2);
sound(x,Fs/4);
y=fft(x);
y=fftshift(y);%频率分量将会移到坐标中心
subplot(614);
plot(abs(y));%画出原始语音信号的频谱图，这里保证了x轴的点数必须和y轴点数一致
title('采样频率11k的语音信号的频谱');

x=resample(x,1,2);
sound(x,Fs/8);
y=fft(x);
y=fftshift(y);%频率分量将会移到坐标中心
subplot(615);
plot(abs(y));%画出原始语音信号的频谱图，这里保证了x轴的点数必须和y轴点数一致
title('采样频率5.5k的语音信号的频谱');

x=resample(x,1,2);
sound(x,Fs/16);
y=fft(x);
y=fftshift(y);%频率分量将会移到坐标中心
subplot(616);
plot(abs(y));%画出原始语音信号的频谱图，这里保证了x轴的点数必须和y轴点数一致
title('采样频率2.75k的语音信号的频谱');