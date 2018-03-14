clear
clc
A=1; B=9; C=3; D=3; E=8; F=3; G=2; H=8; I=9; %MI RUT 19.338.328-9
vi=1;
a=0.9;
dt=10e-3;
t(1)=0;
vf(1)=0;
for i=2:41;
    t(i)=(i-1)*dt;
    vf(i)=(1-a)* vi + a * vf(i-1);
end
close;stem(t,vf);
xlabel('seg');grid;