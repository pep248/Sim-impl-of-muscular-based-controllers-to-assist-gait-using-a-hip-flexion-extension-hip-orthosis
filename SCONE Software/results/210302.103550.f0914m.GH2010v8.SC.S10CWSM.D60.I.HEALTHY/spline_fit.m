function [fitresult, gof] = spline_fit(filtered_time_r, filtered_torque_r)
%CREATEFIT3(FILTERED_TIME_R,FILTERED_TORQUE_R)
%  Create a fit.
%
%  Data for 'untitled fit 1' fit:
%      X Input : filtered_time_r
%      Y Output: filtered_torque_r
%  Output:
%      fitresult : a fit object representing the fit.
%      gof : structure with goodness-of fit info.
%
%  See also FIT, CFIT, SFIT.

%  Auto-generated by MATLAB on 08-Apr-2021 13:26:24


%% Fit: 'untitled fit 1'.
[xData, yData] = prepareCurveData( filtered_time_r, filtered_torque_r );

% Set up fittype and options.
ft = fittype( 'smoothingspline' );

% Fit model to data.
[fitresult, gof] = fit( xData, yData, ft );

% Plot fit with data.
figure( 'Name', 'untitled fit 1' );
h = plot( fitresult, xData, yData );
legend( h, 'filtered_torque_r vs. filtered_time_r', 'untitled fit 1', 'Location', 'NorthEast', 'Interpreter', 'none' );
% Label axes
xlabel( 'filtered_time_r', 'Interpreter', 'none' );
ylabel( 'filtered_torque_r', 'Interpreter', 'none' );
grid on


