clear
clc
A=1; B=9; C=3; D=3; E=8; F=3; G=2; H=8; I=9;  %MI RUT 19.338.328-9
t=0:0.3:30; v=exp(-((B+A)/(2*C*(D+E))) *t).*sin(t);
subplot 121; plot(t,v); title('PLOT');
xlabel('tiempo(seg)'); ylabel('volts'); grid;
subplot 122; stem(t,v); title('STEM');
xlabel('tiempo(seg)'); ylabel('volts'); grid;
