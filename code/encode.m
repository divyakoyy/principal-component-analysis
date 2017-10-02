function C = encode(I, code)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
dim = size(I);
arraySize = [dim(1)*dim(2), dim(3)];
Ic = double(reshape(I, arraySize));
C = (code.U)'*(Ic - code.mu*ones(1,dim(3)));
end

