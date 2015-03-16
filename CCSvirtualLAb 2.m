lh = log(0.10);
lhs = lh/pi;
x = tf([2*1.5 3.8150*1.5],[2 1 0]);    %Creating Transfer Function
sys = feedback(x,1)                    %Creating Feedback System

