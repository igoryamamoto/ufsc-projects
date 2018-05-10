n = 30;
xc = 0.3;
yc = 0.3;
r = 1/5;
dtheta = 2*pi/n;

i = 0:n;
Px = xc + r*cos(i*dtheta);
Py = yc + r*sin(i*dtheta);

% Cinematica inversa
L1 = 0.6;
L2 = 0.6;
R = sqrt(Px.^2+Py.^2);
q1 = atan(Py./Px)-acos((L1^2+R.^2-L2^2)/(2*L1*R));
q2 = pi - acos((L1^2+L2^2-R.^2)/(2*L1*L2));

% Generate Signal
tsim = 50;
time = 0:tsim/n:tsim;

ref1 = [time;q1];
ref2 = [time;q2];
save('ref1.mat', 'ref1');
save('ref2.mat', 'ref2');