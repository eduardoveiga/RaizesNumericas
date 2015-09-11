function bissec(a,b,Niter,tol)
disp(" ")
disp(" Metodo da bisseccao")
disp("n     a     b     x     f(x)      erro")
fa = f(a);

for i=1:Niter
	fb=f(b);
	x=(b+a)/2;
	fx=f(x);
erro=(b-a)/2;
disp([i,a,b,x,fx,erro])


	if(fx==0|(b-a)/2<tol)
		disp("")
		disp("O metodo obteve sucesso")
		disp("")
		return;
		
		
	else
		if(fa*fx>0)
		a = x;
		fa = fx;
	else
		b=x;
	endif
	endif
endfor 
disp("")
disp("O metodo falhou depois de (Niter)")
disp(Niter)
disp("iteraçoes")
disp("")
endfunction


