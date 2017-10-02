function J = decode(C, code)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
dim = size(C);
Jc = code.U*C + code.mu*ones(1,dim(2));
J = imresize(Jc, code.size);
end

