function J = decode(C, code)

dim = size(C);
U = code.U;
mu = code.mu;

Jc = U*C + mu*ones(1,dim(2));
J = reshape(Jc, code.size);
end

