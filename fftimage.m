clear all;
clf;

X=1:0.01:2*pi;
Y=1:0.01:2*pi;
Y=Y.';
I=sin(2*pi*1*X+2*pi*1*Y);
I=I*256;
h=uint8(I);
figure(1);
surf(h,'edgecolor','none');

figure(2);
imshow(h);
M=100;
N=100;
F=fft2(I);
[m,n]=size(F);
omega=1:m;
phi=1:n;
%F=10*log10(F);
figure(3)
surf(abs(fftshift(F)),'edgecolor','none');
grid on;
xlabel('x')
ylabel('y')
zlabel('F(x,y) (dBi)')
figure(4)
xlabel('x')
ylabel('y')
imagesc(abs(fftshift(F)));