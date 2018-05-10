function xc = newton(fun,dFun,x0,e1,e2,nMax)
%--------------------------------------------------------------------------
% Syntax:       xc = newton(fun,dFun,x0,e,nMax);
%               
% Inputs:       fun  is a function handle (its zero will be found)
%               dFun is a function handle (the derivative of fun)
%               x0   is the initial aproximation value
%               e1   is the absolute error convergence tolerance
%               e2   is the absolute error convergence tolerance
%               nMax is the maximum number of iterations
%                       
% Outputs:      xc   is the final approximate value of the root
%               
% Description:  This function calculates the root of an non-linear
%               function, using the Newtons' Method.
%
% Author:       Ígor Assis Rocha Yamamoto
%               igor.a.r.y@gmail.com
%               
% Date:         April, 2016
%--------------------------------------------------------------------------

% Fill in unset optional values.
switch nargin
    case 1
        dFun = @derivativeFun;
        x0 = 1;
        e1 = 1e-6;
        e2 = 1e-6;
        nMax = 50;
    case 2
        x0 = 1;
        e1 = 1e-6;
        e2 = 1e-6;
        nMax = 50;
    case 3
        e1 = 1e-6;
        e2 = 1e-6;
        nMax = 50;
    case 4
        e2 = 1e-6;
        nMax = 50;
    case 5
        nMax = 50;
end

% Function to compute the approximate value of the derivative function at x
    function dfx = derivativeFun(x)
        delta = 1e-6;
        dfx = (fun(x) - fun(x+delta))/delta;
    end

% Initiate values 
xk = x0;
errorValues = zeros(nMax);
iterationValues = zeros(nMax+1);
iterationValues(1) = xk;
% Begin iteration
for k=1:nMax
    xk_past = xk;
    xk = xk - (fun(xk)/dFun(xk));
    
    relErr = abs(xk-xk_past)/abs(xk);
    iterationValues(k+1) = xk;
    errorValues(k) = relErr;
    if (abs(fun(xk)) < e1)
        xc = xk;
        plotGraphs();
        return
    end
    if (relErr < e2)
        xc = xk;
        plotGraphs();
        return
    end
end

    function plotGraphs()
        % Convergence Values
        figure('Name','Newton:Convergence','NumberTitle','off','FileName','newton_conv.eps');
        stem(0:k,iterationValues(1:k+1),'fill');
        title('Convergence','FontSize',16);
        xlabel('k','FontSize',16);
        ylabel('tc','FontSize',16);
        grid on;
        % Error Values
        figure('Name','Newont:Relative Error','NumberTitle','off','FileName','newton_err.eps');
        stem(1:k,errorValues(1:k),'fill','red');
        title('Relative Error','FontSize',16);
        xlabel('k','FontSize',16);
        ylabel('error','FontSize',16);
        grid on;
    end
% Didn't converge
xc = NaN;
disp('Maximum number of iterations exceeded')
end