%Lab_7 Alex, Daly
clear all
% k=0;
% for	t=-10:0.01:10
%     k=k+1;
%     if	(t>-0.5	&&	t<0.5)
%         x1(k)=1;
%     else	x1(k)=0;
%     end
% 
%     if	(t>-1	&&	t<1)
%         x2(k)=1;
%     else	x2(k)=0;
%     end
%     if	(t>-2	&&	t<2)
%         x3(k)=1;
%     else	x3(k)=0;
%     end
%     if	(t>-3	&&	t<3)
%         x4(k)=1;
%     else	x4(k)=0;
%     end
%     if	(t>-4	&&	t<4)
%         x5(k)=1;
%     else	x5(k)=0;
%     end
% end
% t=-10:0.01:10;
% step=1/0.01;
% f=-step/2:step/length(t):step/2-step/length(t);
% figure(1);
% subplot(5,1,1),	plot(x1);
% subplot(5,1,2),	plot(x2);
% subplot(5,1,3),	plot(x3);
% subplot(5,1,4),	plot(x4);
% subplot(5,1,5),	plot(x5);
% 
% figure(2)
% subplot(5,1,1),	plot(f,	fftshift(abs(fft(x1))))
% subplot(5,1,2),	plot(f,	fftshift(abs(fft(x2))))
% subplot(5,1,3),	plot(f,	fftshift(abs(fft(x3))))
% subplot(5,1,4),	plot(f,	fftshift(abs(fft(x4))))
% subplot(5,1,5),	plot(f,	fftshift(abs(fft(x5))))

% t=-10:0.0001:10;
% x1=sinc(500*t);
% x2=sinc(1200*t);
% x3=x1+x2;
% step=1/0.0001;
% f=-step/2:step/length(t):step/2-step/length(t);
% subplot(3,1,1),	plot(f,fftshift(abs(fft(x1))));
% subplot(3,1,2),	plot(f,fftshift(abs(fft(x2))));
% subplot(3,1,3),	plot(f,fftshift(abs(fft(x3))));
% 
% step=1/0.0001;
% f=-step/2:step/length(t):step/2-step/length(t);
% t=-10:0.0001:10;
% x4 = t.*sinc(500*pi*t)
% subplot(1,1,1),	plot(f,fftshift(abs(fft(x4))));

% Part 4
% step=1/0.0001;
% f=-step/2:step/length(t):step/2-step/length(t);
% t=-10:0.0001:10;
% x5 = t.*sinc(500*pi*(t-2));
% subplot(1,1,1),	plot(f,fftshift(abs(fft(x5))));

% Part 5
% k=1;	yi(1)=0;
% for	t=-10:0.01:10	
%     k = k + 1;
%     if	(t>-2	&&	t<2)	
%         y(k)=1;	
%     else	
%         y(k)=0;	
%     end	
%     yi(k)=yi(k-1)+y(k);	
% end
% step=1/.01;
% t=-10:0.01:10;
% f= -step/2:step/length(t):step/2;	
% plot(f,abs(fftshift(fft(yi))));

% Part 6
% k = 1;
% for	t=-10:0.01:10	
%     k = k + 1;
%     u = 3*t - 2;
%     if	(u>-2	&&	u<2)	
%         y(k)=1;	
%     else	
%         y(k)=0;	
%     end	
%     if	(t>-2	&&	t<2)	
%         g(k)=1;	
%     else	
%         g(k)=0;	
%     end	
% end
% step=1/.01;
% t=-10:0.01:10;
% f= -step/2:step/length(t):step/2;	
% subplot(2, 1, 1), plot(f,abs(fftshift(fft(y))));
% subplot(2, 1, 2), plot(f,abs(fftshift(fft(g))));

% Part 7
% k = 1;
% for	t=-10:0.01:10	
%     k = k + 1;
%     if	(t>-2	&&	t<2)	
%         y(k)=1;	
%     else	
%         y(k)=0;	
%     end	
% end
% yd = [diff(y),0];
% step=1/.01;
% t=-10:0.01:10;
% f= -step/2:step/length(t):step/2;	
% subplot(2, 1, 1), plot(f,abs(fftshift(fft(y))));
% subplot(2, 1, 2), plot(f,abs(fftshift(fft(yd))));

% %Part 8
% k = 1;
% for	t=-10:0.01:10	
%     k = k + 1;
%     if	(t>-2	&&	t<2)	
%         y(k)=1;	
%     else	
%         y(k)=0;	
%     end	
% end
% t=-10:0.01:10;
% Y = abs(fft(y));
% Ey = y*y';
% EY = Y*Y'/length(t);
% step=1/.01;
% f= -step/2:step/length(t):step/2;	
% subplot(2, 1, 1), plot(f,abs(fftshift(fft(y))));
% subplot(2, 1, 2), plot(f,abs(fftshift(fft(yd))));

% %part 9
% 
% k=0;
% for	t=-10:0.01:10
%     k=k+1;
%     if	(t>-1	&&	t<1)
%         x(k)=1;
%     else	
%         x(k)=0;
%     end
%     if	(t>-2	&&	t<2)
%         y(k)=1;
%     else	
%         y(k)=0;
%     end
% end
% 
% t=-10:0.01:10;
% step=1/0.01;
% f1=-step+step/length(t):step/length(t):step-step/length(t);
% f=-step/2:step/length(t):step/2-step/length(t);
% subplot(2, 1, 1), plot(f1,abs(fftshift(fft(conv(x,y)))));
% 
% t=-10:0.01:10;
% 
% subplot(2, 1, 2), plot(f,abs(fftshift(fft(x))).*abs(fftshift(fft(y))));	

%part 10

% a=imread('moon.tif');
% figure(1);
% imshow(a);
% figure(2);
% mesh(fftshift(abs(fft2(a))));

% a=imread('cameraman.tif');
% figure(1);
% imshow(a);
% figure(2);
% mesh(fftshift(abs(fft2(a))));

% a=randn(300, 400);
% figure(1);
% imshow(a);
% figure(2);
% mesh(fftshift(abs(fft2(a))));
%
%part 11
% w = -pi*100:pi*100;
% H=1j*w./((1j*w).^2+3*1j*w+2);
% X=1./(1+1j*w);
% 
% figure(1)
% plot(w,real(abs(ifft(X.*H))));
% figure(2)
% t=0:0.01:10;
% yx=-t.*exp(-t)+2*exp(-t)-2*exp(-2*t);
% plot(t,abs(yx));

%part 12
% wmax1 = 500*pi;
% wmax2 = 1200*pi;
% wmax3 = 1200*pi;
% 
% T1=pi/(wmax1);	
% T2=pi/(wmax2);
% T3=pi/(wmax3);
% 
% n1=-10/T1:10/T1;
% n2=-10/T2:10/T2;
% n3=-10/T3:10/T3;
% 
% x1=sinc(500*n1*T1);
% x2=sinc(1200*n2*T2);
% x3=sinc(500*n3*T3)+sinc(1200*n3*T3);
% 
% f1=-1/(2*T1):1/(T1*length(n1)):1/(2*T1)-1/(T1*length(n1));
% f2=-1/(2*T2):1/(T2*length(n2)):1/(2*T2)-1/(T2*length(n2));
% f3=-1/(2*T3):1/(T3*length(n3)):1/(2*T3)-1/(T3*length(n3));
% 
% figure(1)
% subplot(3,1,1),	plot(f1,abs(fft(x1)));
% subplot(3,1,2),	plot(f2,abs(fft(x2)));
% subplot(3,1,3),	plot(f3,abs(fft(x3)));
% 
% T1=pi/(2*wmax1);	
% T2=pi/(2*wmax2);
% T3=pi/(2*wmax3);
% 
% n1=-10/T1:10/T1;
% n2=-10/T2:10/T2;
% n3=-10/T3:10/T3;
% 
% x1=sinc(500*n1*T1);
% x2=sinc(1200*n2*T2);
% x3=sinc(500*n3*T3)+sinc(1200*n3*T3);
% 
% f1=-1/(2*T1):1/(T1*length(n1)):1/(2*T1)-1/(T1*length(n1));
% f2=-1/(2*T2):1/(T2*length(n2)):1/(2*T2)-1/(T2*length(n2));
% f3=-1/(2*T3):1/(T3*length(n3)):1/(2*T3)-1/(T3*length(n3));
% 
% figure(2)
% subplot(3,1,1),	plot(f1,abs(fft(x1)));
% subplot(3,1,2),	plot(f2,abs(fft(x2)));
% subplot(3,1,3),	plot(f3,abs(fft(x3)));
% 
% 
% %part c
% T1=pi/(0.8*wmax1);	
% T2=pi/(0.8*wmax2);
% T3=pi/(0.8*wmax3);
% 
% n1=-10/T1:10/T1;
% n2=-10/T2:10/T2;
% n3=-10/T3:10/T3;
% 
% x1=sinc(500*n1*T1);
% x2=sinc(1200*n2*T2);
% x3=sinc(500*n3*T3)+sinc(1200*n3*T3);
% 
% f1=-1/(2*T1):1/(T1*length(n1)):1/(2*T1)-1/(T1*length(n1));
% f2=-1/(2*T2):1/(T2*length(n2)):1/(2*T2)-1/(T2*length(n2));
% f3=-1/(2*T3):1/(T3*length(n3)):1/(2*T3)-1/(T3*length(n3));
% 
% figure(3)
% subplot(3,1,1),	plot(f1,abs(fft(x1)));
% subplot(3,1,2),	plot(f2,abs(fft(x2)));
% subplot(3,1,3),	plot(f3,abs(fft(x3)));


T1=pi/(2*2000*pi); %twice Nyquist
T2=pi/(2000*pi);	%Nyquist
T3=pi/(0.8*2000*pi); %less than Nyquist

n1=-10/T1:10/T1;
n2=-10/T2:10/T2;
n3=-10/T3:10/T3;

x1=cos(2000*pi*n1*T1);
x2=cos(2000*pi*n2*T2);
x3=cos(2000*pi*n3*T3);
f1=-1/(2*T1):1/(T1*length(n1)):1/(2*T1)-1/(T1*length(n1));
f2=-1/(2*T2):1/(T2*length(n2)):1/(2*T2)-1/(T2*length(n2));
f3=-1/(2*T3):1/(T3*length(n3)):1/(2*T3)-1/(T3*length(n3));
figure(4)
subplot(3,1,1),	plot(f1, abs(fft(x1)));
subplot(3,1,2), plot(f2, abs(fft(x2)));
subplot(3,1,3), plot(f3, abs(fft(x3)));
