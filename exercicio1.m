function t = exercicio1(func, func_d, x0)

% nao alterar: inicio
es = 0.01; % erro relativo
imax = 20; % número máximo de iterações
% nao alterar: fim

%%%%%%%%%%%%%%%%%%%%%%%%%%

% digite seu codigo aqui
t = zeros(imax,1) % alterar
t(1) = x0
erro = zeros(length(t),1)

for ii = 1:length(t)-1
  ii
  if ii ~= 1
    erro(ii) = abs((t(ii)-t(ii-1))/t(ii))
    if erro(ii) < es
      break
    endif
  endif
  t(ii+1) = t(ii) - func(t(ii))/func_d(t(ii))
endfor

disp('O tempo é:')
t(ii)

%%%%%%%%%%%%%%%%%%%%%%%%%%

endfunction
