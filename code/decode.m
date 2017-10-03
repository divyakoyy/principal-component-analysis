function J = decode(C, code)
    U = code.U;
    mu = code.mu;
    dim = size(C);
    
    Jc = U*C + mu*ones(1,dim(2));
    J = reshape(Jc, [code.size(1), code.size(2), size(C,2)]);
    J = uint8(J);
end

