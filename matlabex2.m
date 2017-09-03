[a,b]=mymean(data,21,0.1,0.5,20);
X1=unique(data.B);
X2=unique(data.rho);
for i= 1:1:size(X1) %elo ziomki, tutaj licza wartosci mean & std dla unikalnych B%
Y1(i,:)=mean(data.dropprobability(data.B==X1(i)));
Y3(i,:)=std(data.dropprobability(data.B==X1(i)));
end
for l= 1:1:size(X2) %elo ziomki, tutaj licza wartosci mean & std dla unikalnych rho%
Y2(l,:)=mean(data.dropprobability(data.rho==X2(l)));
Y4(l,:)=std(data.dropprobability(data.rho==X2(l)));
end
YA=[Y2-Y4,Y2,Y2+Y4]'; %tworze wektor XA ktory sklada sie z [mean-std,mean,mean +std] i robie jego transpose poniewaz
%funkcja plot 'idzie' po kolumnach a nie po wierszach to samo robie ponizej
%z wektorem XA gdzie daje unikalne warotsci dla rho
XA=[X2,X2,X2]';
figure
subplot(1,2,1)
plot(X,Y,'mh--')
subplot(1,2,2)
plot(XA,YA,'gp--')


