function [y]=fun2(x)
    y=cos(x)-x*exp(x)
endfunction
x1=0
x2=1
iter=0
while(abs(x2-x1)>0.001&&iter<=100)
    x=x1-((x1-x2)/(fun2(x1)-fun2(x2)))*fun2(x1)
    iter=iter+1
    if fun2(x)*fun2(x1)<0 
        then x2=x

    else
        x1=x    
    end
end
disp(x1,x2,iter)
