function g = sigmoid(z)
%SIGMOID Compute sigmoid function
%   g = SIGMOID(z) computes the sigmoid of z.

% You need to return the following variables correctly 
g = zeros(size(z));
exponent = zeros(size(z));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the sigmoid of each value of z (z can be a matrix,
%               vector or scalar).
#solution for matrices 
%for i = 1:size(z,2)
%exponent(i) = exp(-z(i));
%g(i) = 1/(1+ exponent(i));
%end

g = 1 ./ (1 + e.^-z);


% =============================================================

end
