%% Liquid Level System - Continous Control Systems Lab 1

%%Part B

tvec = 1:50;            %Time Vector
u = ones(1,50);         %Unit Step Input(Vector Containing all element=1,
                        %and its length should be equal to that of 'tvec'

%% Height Vs. time
[t,y] = ode45(@tank_control,tvec,[0],[],u,tvec,'height');;
figure();
plot(t,y)
axis([0,50 , 0, 2])
xlabel('time(s)')
ylabel('Height');
title('Height vs Time')

%Through Final Value theorem , we can see that the value of Resistance
%R = 1 .

%% Finding the Time constant

find(y<0.65)
% The time Constant is Approximately 4 seconds
%% Part C 
%(1) H/Q

x= tf([1],[4 1])   %Transfer function H/Q .
time = 0:0.01:2;
u = exp(-time.^2).*cos(3*time);
figure();
lsim(x, u, time)

%(2)Q0/Qi

% Q0/Qi = 1/(RCs +1)

y = tf([1],[4 1])  %Transfer Function Q0/Qi
u = exp(-time.^2).*cos(3*time);
figure();
lsim(y, u, time)

%% Result

% R = 1
% C*1 = 4 (From Time Constant ) ==> C =4



