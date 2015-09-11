function newton(x0,Niter,tol)
disp("")
disp("Resultado Metodo de Newton")
disp("n     x     x0       erro")

disp("")


for i=1:Niter
x=x0-(f(x0)/df(x0));
epsilon=abs(x-x0);
disp([i,x,x0,epsilon])

if(f(x0)==0|abs(x-x0)<tol)
	disp("")
	disp("O Metodo obteve sucesso")
	disp("")
return;
	else
epsilon=abs(x-x0);
x0=x;
endif 
endfor 


disp("")
disp("O metodo falhou depois de (Niter)")
disp(Niter)
disp("iteraçoes")
disp("")
endfunction
