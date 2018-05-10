function xc = falsePosition(fun,a,b,e1,e2,nMax)
%--------------------------------------------------------------------------
% Syntax:       xc = newton(fun,dFun,x0,e,nMax);
%               
% Inputs:       fun  is a function handle (its zero will be found)
%               [a,b] is the initial interval
%               e1   is the absolute error convergence tolerance
%               e2   is the absolute error convergence tolerance
%               nMax is the maximum number of iterations
%                       
% Outputs:      xc   is the final approximate value of the root
%               
% Description:  This function calculates the root of an non-linear
%               function, using the False Position Method.
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

% Check if the interval choosen is valid
if (fun(a)*fun(b)>=0)
    error('myfunction:false_position',...
            'Invalid interval')
end

% Begin iteration
xk = a;
errorValues = zeros(nMax);
iterationValues = zeros(nMax+1);
iterationValues(1) = xk;
for k=1:nMax
    xk_past = xk;
    xk = a - (fun(a)*(b-a))/(fun(b)-fun(a));
    
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
    if (fun(xk)*fun(a)<0)
        a = xk;
    else
        b = xk;
    end
end  

    function plotGraphs()
        % Convergence Values
        figure('Name','FalsePos:Convergence','NumberTitle','off','FileName','falsePos_conv.eps');
        stem(0:k,iterationValues(1:k+1),'fill');
        title('Convergence','FontSize',16);
        xlabel('k','FontSize',16);
        ylabel('tc','FontSize',16);
        grid on;
        % Error Values
        figure('Name','FalsePos:Relative Error','NumberTitle','off','FileName','falsePos_err.eps');
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