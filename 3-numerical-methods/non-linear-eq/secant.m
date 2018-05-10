function xc = secant (fun,x0,x1,e1,e2,nMax)
%--------------------------------------------------------------------------
% Syntax:       xc = newton(fun,dFun,x0,e,nMax);
%               
% Inputs:       fun  is a function handle (its zero will be found)
%               x0,x1 are the initial aproximations values
%               e1   is the absolute error convergence tolerance
%               e2   is the absolute error convergence tolerance
%               nMax is the maximum number of iterations
%                       
% Outputs:      xc   is the final approximate value of the root
%               
% Description:  This function calculates the root of an non-linear
%               function, using the Secant Method.
%
% Author:       Ígor Assis Rocha Yamamoto
%               igor.a.r.y@gmail.com
%               
% Date:         April, 2016
%--------------------------------------------------------------------------

% Fill in unset optional values.
switch nargin
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

errorValues = zeros(nMax);
iterationValues = zeros(nMax+1);
iterationValues(1) = x1;
% Begin iteration
for k=1:nMax
    temp = x1;
    dfx = (fun(x1) - fun(x0))/(x1-x0);
    x1 = x1 - (fun(x1)/dfx);
    x0 = temp;
    
    relErr = abs(x1-x0)/abs(x1);
    iterationValues(k+1) = x1;
    errorValues(k) = relErr;
    if (abs(fun(x1)) < e1)
        xc = x1;
        plotGraphs();
        return
    end
    if (relErr < e2)
        xc = x1;
        plotGraphs();
        return
    end
end

    function plotGraphs()
        % Convergence Values
        figure('Name','Secant:Convergence','NumberTitle','off','FileName','secant_conv.eps');
        stem(0:k,iterationValues(1:k+1),'fill');
        title('Convergence','FontSize',16);
        xlabel('k','FontSize',16);
        ylabel('tc','FontSize',16);
        grid on;
        % Error Values
        figure('Name','Secant:Relative Error','NumberTitle','off','FileName','secant_err.eps');
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