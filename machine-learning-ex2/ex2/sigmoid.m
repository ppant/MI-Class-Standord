function g = sigmoid(z)
%SIGMOID Compute sigmoid functoon
%   J = SIGMOID(z) computes the sigmoid of z.

% You need to return the following variables correctly 
g = zeros(size(z));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the sigmoid of each value of z (z can be a matrix,
%               vector or scalar).
% ppant
% Test code
% g(z) = 1 / 1 + e−z
% Calculate sigmod of each val of z and z can be mat, vec, scalar
% We use sigmiod (a logistic fuction with postive derivatives at each point) and predict p

g = 1 ./ (1 + exp(-z));



% =============================================================

end
