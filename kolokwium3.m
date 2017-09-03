X=linspace(-4*pi,4*pi,1000);

y1=sin(pi*X/2)./(1 + exp(-1*X/2));

y2=1./(1 + exp(-1*X/2));

y3=-y2;

x0=5;
ep=0.00001

yx0=1./(1 + exp(-1*x0/2));

dy2=((1./(1 + exp(-1*(X+ep)/2))-1./(1 + exp(-1*X/2)))/ep);
tang=((1./(1 + exp(-1*(x0+ep)/2))-1./(1 + exp(-1*x0/2)))/ep).*X + 1./(1 + exp(-1*x0/2)) - (1./(1 + exp(-1*(x0+ep)/2))-1./(1 + exp(-1*x0/2)))/ep.*x0;

figure
g=subplot(2,1,1);

plot(X,y1,'-r')
hold on

plot(X,y2,'-.k')
hold on

plot(X,y3,'-.k')
hold on
plot(x0,yx0,'*')
hold on
plot(X,tang,'--b')

ylim(g,[-1,1])

h=subplot(2,1,2);

plot(X,y2,'-k')
hold on

plot(X,dy2,'--b')
ylim(h,[-1,1])


