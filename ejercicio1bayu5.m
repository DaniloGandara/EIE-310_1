b = [3.2 0.25 0.4 0.6 0.25];
b = b / (sum(b)); 
[H, w] = freqz(b, 1);
n = [0 : 0.1 : 3.9] * pi; x = square(n);
y = conv(x, b); 
subplot 221; stem(x); title('x (entrada)');
axis([0 45 -1.5 1.5]); xlabel('n'); grid
subplot 222; stem(y); title('y (salida)');
axis([0 45 -1.5 1.5]); xlabel('n'); grid