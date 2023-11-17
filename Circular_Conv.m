x1 = [1,2,3,4]; 
x2 = [4,1,1,2]; 
% Find the lengths of the sequences 
N1 = length(x1); 
N2 = length(x2); 
% Find the maximum length of the sequences 
N3 = max(N1,N2); 
% Create a zero matrix of size N3 x N3 
m = zeros(N3); 
% Copy the first sequence to the first column of the matrix 
m(:,1) = x1'; 

% Generate the circular matrix
for i = 1:N3
    for j = 2:N3
        m(i,j) = mod((i+j-2),N3) + 1;
    end
end

% Print the matrix 
m
% Compute the circular convolution of the two sequences using the matrix multiplication
y = m*x2'; 
% Compute the circular convolution of the two sequences using the built-in MATLAB function
y1 = cconv(x1,x2,4); 
y1 
% Compute the linear convolution of the two sequences using the built-in MATLAB function
y2 = cconv(x1,x2); 
y2 