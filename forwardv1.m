
% Variables %
d1=0;
d3=100;
theta2=0;
theta4=0;

% constants 
L2=450;
L4=100;
L5=600;

DH = [ 0 0 d1 0; 0 0 L2 theta2+pi/2; pi/2 0 d3 pi/2; pi/2 L4 0 theta4; pi/2 L5 0 pi];

Ti=1;
for k= 1:5
    theta=DH(k,4);
    alpha=DH(k,1);
    aye=DH(k,2);
    dee=DH(k,3);
    Ti=Ti*[cos(theta) -1*sin(theta) 0 aye; sin(theta)*cos(alpha) cos(theta)*cos(alpha) -1*sin(alpha) -1*dee*sin(alpha); sin(theta)*sin(alpha) cos(theta)*sin(alpha) cos(alpha) dee*cos(alpha); 0 0 0 1];
end
format bank;
disp(Ti);