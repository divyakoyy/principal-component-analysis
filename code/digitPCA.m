function [code, p] = digitPCA(data, k)

m = numel(data.image(:,:,1));

p = zeros(m, 10);

for i = 0:9
    imageSubset = data.image(:,:,data.label == i);
    [c, s] = imagePCA(imageSubset, k);
    code(i+1) = c;
    p(:,i+1) = variancePercentage(s);
    
end

end