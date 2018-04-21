function [J, grad] = costFunction(theta, X, y)
%COSTFUNCTION Compute cost and gradient for logistic regression
%   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
%   parameter for logistic regression and the gradient of the cost
%   w.r.t. to the parameters.

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
%
% Note: grad should have the same dimensions as theta
%
thetaX = X * theta;
H = sigmoid(thetaX);
intercost = (-y.*log(H) - (1-y).*log(1-H));
J = (1*sum(intercost))/m;
grad = (1/m)*sum(X.*(H-y));

#this will also work, either multiply each item and then take sum or 
#take transpose of one item and multiply rge two whole matrices
#J = (1/m)*(-y'* log(h) - (1 - y)'* log(1-h));
#grad = (1/m)*X'*(h - y);




% =============================================================

end
