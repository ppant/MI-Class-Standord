function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ppant: Added code below for calculating predictions and sqrErrors and then finally cost function 
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.
predictions = X * theta; % number of training examples 
sqrErrors = (predictions-y).^2;  % predictions of hypothesis on all m examples 
J = 1/(2*m) * sum(sqrErrors); % squared errors
% =========================================================================

end
