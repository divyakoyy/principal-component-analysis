function C = encode(I, code)
    dim = size(I);

    if numel(dim) < 3
        index3 = 1;
    else
        index3 = dim(3);
    end

    arraySize = [dim(1)*dim(2), index3];
    Ic = double(reshape(I, arraySize));

    mu = code.mu;
    Ic = Ic - mu*ones(1,index3);
    U = code.U;
    C = U' * Ic;
end

