function [ ma ] = movinga( a,b,n )
[l,m]=size(a) 
syms i
sum1=0
sum2=0
n
p=l-((n-1)/2)
if mod(n,2)~=0
for i=1:l
     
        if i<=n/2
            ma(i,1)=0;
        elseif i>=p
               ma(i,1)=0;    
            else
            sum1=0;
        for j=round(i-((n-1)/2)):round(i+((n-1)/2));
        sum1=sum1+a(j,1);
        end
        end
        sum1;
        ma(i,1)=sum1/n;
           
        
 end
        for u=i:(n-1)/2
            ma(u,1)=0
        end

ma
p=round(p-1);
  plot(b,ma,'b--*');
else
for i=1:l
             if i<=n/2
            ma(i,1)=0;
        elseif i>l-(n/2)
               ma(i,1)=0;    
        else
          sum1=0;
          sum2=0;
        for j=round(i-((n)/2)):round(i-1+((n)/2))
        sum1=sum1+a(j,1);
        end
        for j=round(i+1-((n)/2)):round(i+((n)/2))
        sum2=sum2+a(j,1);
        end
              sum1=sum1/n;
        sum2=sum2/n;
        ma(i,1)=(sum1+sum2)/2;
         end
           
        
end

end

