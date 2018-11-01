function [y]=fun2(x)
    y=cos(x)-x*exp(x)
endfunction
function [z]=fun3(x)
    z=-sin(x)-exp(x)-x*exp(x)
endfunction
x=0
x1=1
iter=0
while(abs(x-x1)>0.001&&iter<=100)
    x=x1-(fun2(x1)/fun3(x1))
    iter=iter+1
    x1=x
end
disp(x1,iter)

