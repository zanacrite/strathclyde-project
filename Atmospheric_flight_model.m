%% dynnamic model for a point mass in atmospheric flight

clc;    % Clear the command window.
close all;  % Close all figures 
clear;  % Erase all existing variables. 
workspace;  % Make sure the workspace panel is showing.

%% variables

Lambda = ;   % latitude
Theta = ;    % longitude
v = ;        % velocity
Mt = ;       % time varying mass
We = ;       % angualr velocity
r = ;        % distance
A = ;        % angle of attack

% Forces
Ft = ;       % Thrust
Fd = ;       % Drag
Fl = ;       % Lift
Fg = ;       % Gravity


% velocity in x,y,z directions
Vx = ;    
Vy = ;
Vz = ;



%% equations of motion in inertial frame

r_dot = v .* sind();

Lambda_dot = (v .* cosd()sind()) / r;

Theta_dot = (v .* cosd()cosd()) / r .* cosd();

% accelerations

Ax =  ( (Ft.*cosd(A+E)-Fd)./Mt ) - Fg.*sind()+Fg.*cosd().* cosd() + We.^2.*r.*cosd().*(sind().*cos() - cosd()  .* sind() .* sin());

Ay =  ( (Ft.*sind(A+E).*cosd()+Fl)./Mt.*v ) - ( (Fg./v).*cosd() ) - ( (Fg./v).*sind().*cosd() ) + (v./r) .* cosd() + (2.*We.*cosd().*cosd()) + We.^2.*(r./v).*cosd().*(sind().*sind().*sind()+cosd().*cosd());

Az = ( (Fl .* sind()) ./ Mt .* v  .* cosd() ) - (Fg.*sind()) - ((v./r).*cosd().*cosd().*tand()) + (2.*We.*(sind().*cosd().*tand() - sind())) - We.^2 .*(r./(v.*cosd()).*cosd().*sind().*cos());






