function [d] = deseason( q,t )
t
q
[m,n]=size(t)
[s,v]=size(q)
for i=1:s
    for j=i:s:m
        t(j,1)
        q(i,1)
        d(j,1)=t(j,1)/q(i,1);
        
    end
end
d

%        for i=1:4:m
 %   d(i)=t(i)/q1;

%end
%for i=2:4:m
  %  d(i)=t(i)/q2;

%end
%for i=3:4:m
 %   d(i)=t(i)/q3;

%end
%for i=4:4:m
 %   d(i)=t(i)/q4;

%end
end

