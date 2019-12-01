function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %
    % θj := θj − α i/m * sum(hθ(x(i)) − y(i))x(i) (simultaneously update θj for all j).


    calc = alpha/m * (sum((X*theta) - y))  
    calc1 = alpha/m *(sum (((X*theta) - y).*X(:,2)))

      
    calc;

    temp1 = theta(1,1) - calc;
    temp2 = theta(2,1) - calc1;

    theta(1,1) = temp1;
    theta(2,1) = temp2; 



    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end

