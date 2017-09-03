x=1:0.001:1.1; % tutaj masz przedzial dla ktorego rysujemy
y1=f(x);
acc=0.1;
A=[0.01 0.001 0.0001 0.00001 0.000001];
for e=A
hold on
plot(x,differential(@f,x,e))
end
%tutaj u góry jest plot tych dwoch funkcji
% czerwona to jest funkcjia pierwotna
% a zielona to jest pochodna
% jak mozna zauwazyc, gdy podajemy do funkcji differential funkcjie f to
% funkcje f zamieniamy na anonyous ( jezeli funkcjia jest zalezna od jednej
% zmiennej wystarczy '@' ale kiedy jest od wielu to musimy zapisac to w
% taki sposob '@(zmienne) f(zmienne)'