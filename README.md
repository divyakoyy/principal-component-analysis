# Principal Component Analysis

In this project I used Principal Component Analysis (PCA) to compress images. 

## Image Source
The MNIST handwritten digit database was developed to provide a benchmark for software that recognizes isolated handwritten digit.s Data (images and labels) from this database were utilized in this project.

## Implementation
I developed a coder that can transform an image I into its compressed image C via PCA. I compared digit-specific encoding to encoding for all digits.

## Results

### Percentage of total data variance preserved
k (# principal components) vs. percentage of total data variance preserved. Legend shows line for each digit, 
![percent_variance_all_digits](graphs/percent_variance_each_digit.PNG)

### Digit Encoding and Decoding
each digit (col 0) with encoding then decoding:
* column 1: for all digits 
* column 2: digit-specific encoding 

![encode_decode_digits](graphs/encode_decode.png)


