function [c1,c2] = season(a)
a
[l,m]=size(a);
seasonly=a(1,2:m)';
for i=2:l
seasonly=[seasonly;a(i,2:m)'];
end
[j,h]=size(seasonly);
ma=movinga(seasonly,a(:,1),m-1)
si(1:(m-1)/2,1)=0;
si(((m-1)/2)+1:j-(m-1)/2,1)=seasonly(((m-1)/2)+1:j-(m-1)/2,1)./ma(((m-1)/2)+1:j-(m-1)/2,1);
si(j-((m-1)/2)+1:j,1)=0;
si
[z,g]=size(si);
q1=0;
for i=1:m-1
    q(i,1)=0;
    z-(m-i)
    for t=i:m-1:z
    q(i,1)=q(i,1)+si(t,1)
    end
end


sum(q);
corrfactor=(m-1)/sum(q);
adjq=q.*corrfactor;

d=deseason(adjq,seasonly);

x=[1:j]';
plot(x,seasonly,'r--*')
hold on
plot(x,d,'b--*')
[coeff1,coeff2]=trend(x,d)
deq=coeff1.*x+coeff2;
plot(x,deq)
syms variab
c1=coeff1
c2=coeff2
hold off
end

