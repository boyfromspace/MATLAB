function[E,s]=mymean(data,FN,r1,r2,b)
C=find(data.FileNumber==FN & data.rho<=r2 & data.rho>=r1 & data.B==b);
A=data(C,:);
E=mean(A.dropprobability);
s=std(A.dropprobability);

end