function J = decode(C, code)

dim = size(C);
Jc = code.U*C + code.mu*ones(1,dim(2));
J = imresize(Jc, code.size);
end

