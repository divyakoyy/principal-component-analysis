function [code, p] = digitPCA(data, k)
    code = cell(10);
    p = zeros(size(data.image,1)*size(data.image,2),10);

    for i = 0:9
        imageSubset = data.image(:,:,data.label == i);
        [c, s] = imagePCA(imageSubset, k);
        code{i+1} = c;
        p(:,i+1) = variancePercentage(s);
    end

end