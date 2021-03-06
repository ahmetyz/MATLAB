Fs=1024;
N=1024;
fi=3;
F0=15;
wd=3*pi*pi;
t=[0:N-1]/Fs;
smi=cumsum(cos(2*pi*fi*t));
integral=smi*1/Fs;
integral=integral*wd;
I=cos(integral);
Q=sin(integral);
s=I.*cos(2*pi*F0*t)-Q.*sin(2*pi*F0*t);
figure
plot(t,s);
hold on
plot(t,cos(2*pi*fi*t),'r')
hold off
figure
ff = [-length(s)/2:length(s)/2-1]*Fs/N;
plot(ff,abs(fftshift(fft(s))))