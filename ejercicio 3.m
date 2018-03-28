clear all;
clc;
%19.338.328-9
a=1;b=9;c=3;d=3;e=8;f=3;g=2;h=8;i=9;
B=((a+b)*c)
r=((i+e)*h)/((b+c+e)*10)
R=((i+e)*(a+c))/(b+c+e+g+h)

%inserte exponencial
n=0:1:10;x=B*r.^n;
subplot 331;stem(n,x);
xlabel('n');title('s.exponencial decreciente'); grid
m=0:1:10;y=B*R.^n;
subplot 332;stem(m,y);
xlabel('m');title('s exponencial creciente'); grid

%compleja funcion
v=(-20:1:20); q=-1*((b+c+1)/60)+(((a*h*d)+i)/60)*j; z=exp(q*v);
subplot 333;stem(v,real(z));title('parte real'); xlabel('v')
subplot 334;stem(v,imag(z));title('parte imaginaria'); xlabel('v')
subplot 335;stem(v,abs(z));title('magnitud'); xlabel('v')
subplot 336;stem(v,(180/pi)*angle(z));title('fase equisde'); xlabel('v')
%sonusoidales
j=(-30:1:30);
u=3*cos(2*pi*((2+d+f)/90)*j*pi/3);
subplot 337;stem(j,u);
xlabel('j');title('s, sinusoidal que miras'); grid

%impulso
o=(-b:b);
p=((o-a)==0);
subplot 338;stem(o,p);
title('impulsaaa');xlabel('o');grid

%escalon
k=(-f:f);
K=(k-a)>=0;
subplot 339;stem(k,K);title('escalon');xlabel('k'); grid