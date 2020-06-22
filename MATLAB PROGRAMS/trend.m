function [ theta1,theta2 ] = trend(a,b)
[n,m]=size(a);
a(:,1)=a(:,1)
ty=sum(a.*b)
y=sum(b)
t=sum(a)
t2=sum(a.*a)

theta1=((n*ty)-(y*t))/(n*t2-t*t)
theta2=(y/n)-(theta1*t/n)
end

