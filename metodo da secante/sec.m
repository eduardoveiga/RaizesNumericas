function sec(x0,x1,Niter,tol)

disp("")
disp("Resultado Metodo da secante")
disp("n     x2     x1    x0       erro")
disp("")


for i=1:Niter
x2=(x0*f(x1)-x1*f(x0))/(f(x1)-f(x0));
epsilon=abs(x2-x1);
disp([i,x2,x1,x0,epsilon])

if(f(x0)==0|abs(x2-x1)<tol)
	disp("")
	disp("O Metodo obteve sucesso")
	disp("")
return;
else
epsilon=abs(x2-x1);
x0=x1;
x1=x2;
endif 
endfor 

disp("")
disp("O metodo falhou depois de (Niter)")
disp(Niter)
disp("iteraçoes")
disp("")
endfunction
