function [y]=fun1(x)
    y=cos(x)-x*exp(x);
end
function
x1=0
x2=1
while(abs(x2-x1)>0.001)
    x=(x1+x2)/2
    if fun1(x)*fun1(x1)<0 
        then x2=x
    else
        x1=x
    end
end
disp(x1,x2)

