function [code, s] = imagePCA(images, k)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

m = size(images, 1) * size(images, 2);
n = size(images, 3);
p = min(m, n);
k = min(k,p);
images = double(images);

%imageArray = arrayfun(@(x) x(:),images(1,:,:));
arraySize = [m, n];
A = reshape(images, arraySize);

%images(:, 1:2, 1)
%imageArray(1:56, 1, 1)

mu = A*ones(n)/n;
Ac = A - mu*(ones(n)');
[U, S, V] = svd(Ac);
U = U(:, 1:k);
s = diag(S)/(sqrt(n-1));

code.mu = mu;
code.U = U;
code.size = [size(images, 1), size(images, 2)];

end

