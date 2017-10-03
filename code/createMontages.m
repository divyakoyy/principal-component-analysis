
imTable = zeros(28, 28, 1, 30);

for i = 0:9
    imageSubset = data.image(:,:,data.label == i);
    image = imageSubset(:,:,1);
    
    encoded1 = encode(image, codeAll);
    encoded2 = encode(image, code(i+1));
    
    decoded1 = decode(encoded1, codeAll);
    decoded2 = decode(encoded2, code(i+1));
    
    imTable(:,:,:,3*i+1) = image;
    imTable(:,:,:,3*i+2) = decoded1;
    imTable(:,:,:,3*i+3) = decoded2;

end

montage(imTable, 'Size', [10 3]);

