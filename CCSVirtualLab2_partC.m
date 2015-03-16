y = tf(7*[1 2.3277 1.3277],[4 4 1 0 ])   % Transfer function
sys  =feedback(y,1)                      %Feedback system
%rlocus(y)
step(sys)

y1 = tf([2],[2 1])                       %Tank 1 response

new= y1/y                               %Relation b/w Tank 1 and 2
figure();
step(new)