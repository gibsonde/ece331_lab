clear all
% n=1:44100;
% f=440*[1, 9/8, 5/4, 4/3, 3/2, 5/3, 15/8, 2];
% 
% y=[];
% for k=1:8
%     y=[y,cos(2*(pi*f(k)*n/44100))];
% end
% soundsc(y,44100)

%6103305414

% period = 44100*0.04;
% 
% n=1:period;
% z=zeros(1,period); %silence
% six = cos(2*pi*n*770/44100)+cos(2*pi*n*1477/44100);
% one= cos(2*pi*n*1209/44100)+cos(2*pi*n*697/44100);
% zer= cos(2*pi*n*1336/44100)+cos(2*pi*n*941/44100);
% three= cos(2*pi*n*1477/44100)+cos(2*pi*n*697/44100);
% five= cos(2*pi*n*1336/44100)+cos(2*pi*n*770/44100);
% four= cos(2*pi*n*1209/44100)+cos(2*pi*n*770/44100);
% 
% mynumber = [six, z, one, z, zer, z, three, z, three, z, zer, z, five, z, four, z, one, z, four];
% soundsc(mynumber, 44100);
% 
% f=-22050:44100/length(five):22049
% 
% plot(f, fftshift(abs(fft(five))))


% clear all 
% t = 0:0.01:15;
% x1=0;
% x2=0.2
% x3=0;
% x4=2/pi;
% 
% A=1;
% T0=5;
% tau=1;
% 
% x5 = 2*A/pi;


% for n=1:60
%     xn = 2/pi*1/(1-4*n^2);
% 
%     x1 = x1 + (4*A)/(n*pi)*sin(n*pi/2)*cos(2*n*pi*t/T0);
%     x2 = x2 +(2*A)/(n*pi)*sin(n*pi*tau/T0)*cos(2*pi*n*t/T0);
%     if (rem(n,2) ~= 0)
%         x3 = x3 + (8*A)/(n^2*pi^2)*sin(n*pi/2)*sin(2*pi*n*t/T0);
%     end
%     x4 = x4 + 4*A/(pi*(1-4*n^2))*cos(2*n*pi*t/T0);
% 
%     x5 = x5 + xn*exp(1j*2*n*t)+xn*exp(-1j*2*n*t);
% 
%     % subplot(4,1,1) , plot(t,x1)
%     % subplot(4,1,2) , plot(t,x2)
%     % subplot(4,1,3) , plot(t,x3)
%     % subplot(4,1,4) , plot(t,x4)
%     plot(t, x5)
%     pause
% end

t = 0:0.01:15;
x1=0;
x2=(0.2)^2;
x3=0;
x4=(2/pi)^2;
P5=x4;

A=1;
T0=5;
tau=1;

for n=1:60
    xn = 2/pi*1/(1-4*n^2);

    x1 = x1 + 1/2*((4*A)/(n*pi)*sin(n*pi/2))^2;
    x2 = x2 + 1/2*((2*A)/(n*pi)*sin(n*pi*tau/T0))^2;
    if (rem(n,2) ~= 0)
        x3 = x3 + 1/2*((8*A)/(n^2*pi^2)*sin(n*pi/2))^2;
    end
    x4 = x4 + 1/2*(4*A/(pi*(1-4*n^2)))^2;

    P5 = P5 + 2*(abs(xn))^2;

end