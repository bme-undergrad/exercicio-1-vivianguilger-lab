function t = exercicio1(func,func_d,x0)

% nao alterar: inicio
es = 0.01;
imax = 20;
% nao alterar: fim

%%%%%%%%%%%%%%%%%%%%%%%%%%

t = zeros(imax, 1);
x(1)= x0;
erro = zeros(length(t), 1);

for j = 1:length(t)-1
  if j ~= 1
    erro(j)=abs((x(j)-x(j-1))/x(j));
    if erro(j)<es
      break
    endif
  endif
  x(j+1) = x(j)-(func(x(j))/func_d(x(j)));
endfor
t = x(j)

%%%%%%%%%%%%%%%%%%%%%%%%%%

endfunction
