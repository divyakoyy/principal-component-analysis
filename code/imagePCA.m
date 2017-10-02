function [code, s] = imagePCA(images, k)

m = size(images, 1) * size(images, 2);
n = size(images, 3);
p = min(m, n);
k = min(k,p);
images = double(images);

arraySize = [m, n];
A = reshape(images, arraySize);

mu = A*ones(n,1)/n;
Ac = A - mu*(ones(1,n));
[U, S, V] = svd(Ac, 'econ');
U = U(:, 1:k);

s = diag(S)/(sqrt(n-1));

code.mu = mu;
code.U = U;
code.size = [size(images, 1), size(images, 2)];

end

