function [note] = adnote(duration, keynumber)

N=44100*duration;
f=27.5*2^((keynumber-1)/12);
h=[7*10^-7, 5*10^-7,1*10^-8, 9.5*10^-8, 8*10^-9, 5*10^-9, 6*10^-9 , 2*10^-10, 9.5*10^-10, 6*10^-10, 9*10^-10, 7*10^-10, 5*10^-10, 9.5*10^-11];
h = h / max(h); 
n=1:N;
note=0;

for k=1:14
    note=note+h(k)*cos(2*pi*k*f*n/44100);
end



%generate weighting envelope

N1 = ceil(N/3);
N2 = ceil(3*N/5);
tv = [0.99, 0.5, 0.25];
G= [0.005, 0.004, 0.00075];
e(1) = 0;
for n=2:N1
    e(n)=tv(1)*G(1)+(1-G(1))*e(n-1);
end
for n=N1 + 1:N2
    e(n)=tv(2)*G(2)+(1-G(2))*e(n-1);
end
for n=N2+1:N
    e(n)=tv(3)*G(3)+(1-G(3))*e(n-1);
end
note=note.*e;