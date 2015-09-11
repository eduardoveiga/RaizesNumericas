function fpoint(x,Niter,tol)
disp("")
disp("Dados de saida do metodo do ponto fixo")
disp("n     x     oldx       erro")

disp("")

for i=1:Niter
	oldx=x;
	x=g(x);
	epsilon=abs(x-oldx);
	#disp([i,x,oldx,epsilon])

	if(g(x)==x| abs(x-oldx)<tol)
		disp("O metodo obteve sucesso!")
		disp("")
		disp([i,x,oldx,epsilon])
		return;
	else
		epsilon=abs(x-oldx);
	endif
endfor

disp("")
disp("O metodo falhou depois de (Niter)")
disp(Niter)
disp("iteraçoes")
disp("")
endfunction
