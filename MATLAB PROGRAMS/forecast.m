function [ output_args ] = forecast( y,q,data)

noq=(y*4)+q
syms deqn x

[c1,c2]=season(data)
deqn=(c1*x)+c2
double(subs(deqn,x,noq))

end

