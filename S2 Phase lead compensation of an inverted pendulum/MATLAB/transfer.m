g = 9.81;
l = 0.10;
omega = sqrt(g/l);

num = [-omega^2];
den = [1,0,-omega^2];
pendulum = tf(num,den);
figure(1);
step(pendulum);    % Plant model

k = 2;
sysclp1 = feedback(pendulum,k);
figure(2);
step(sysclp1);     % Negative feedback

k = 10;
sysclp2 = feedback(pendulum,k,+1);
figure(3);
step(sysclp2);     % Positive feedback

figure(4);
rlocus(pendulum);

figure(5);
rlocus(-pendulum);

c = 10;
tau = 1/(c*omega);
num = [c*tau,1];
den = [tau,1];
compensator = tf(num,den);
sys2 = series(-compensator,pendulum);
figure(6);
rlocus(sys2);

num = [0.1,1];
den = [0.01,1];
compensator2 = tf(num,den);
sys3 = series(-compensator2,pendulum);
figure(7);
rlocus(sys3);

k = 1.5;
sys4 = feedback(sys3,k);
figure(8);
step(sys4);

servo = tf([1],[0.00025 0.02 1]);
actual = series(servo,pendulum);
sys4 = series(-compensator2,actual);
figure(9);
rlocus(sys4);

k = 1.2;    %rlocfind(sys4);
syscpl3 = feedback(sys4,k);
figure(10);
bode(syscpl3);

figure(11);
step(syscpl3);

figure(12);
margin(syscpl3);
