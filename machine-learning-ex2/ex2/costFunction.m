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
% ppant: Code for computing cots and gradient for logistic regression
% We have used sigmod and computed partial derivatives and cal grad 
%  Test code
%  J(θ) = 1 / m
%   m X i=1−y(i) log(hθ(x(i)))−(1−y(i))log(1−hθ(x(i))), 
%  ∂J(θ) ∂θj =
%  1 m
%  m X i=1 (hθ(x(i))−y(i))x(i) j 
%  J =  1/m  * sum((-y * log X*theta)-(1-y) * log (1-X*theta));

J = (1 / m) * sum( -y'*log(sigmoid(X*theta)) - (1-y)'*log( 1 - sigmoid(X*theta)) );
%grad = (1 / m) * sum((sigmoid(X*theta) - y')   
% repmat for copying same size matrix
grad = (1 / m) * sum( X .* repmat((sigmoid(X*theta) - y), 1, size(X,2)) );

% =============================================================

end
