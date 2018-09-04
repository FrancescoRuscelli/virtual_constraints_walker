%Dynamic matrices for a 3-link walker.
%Robot Parameters: 

%Number of links: 3
%Length of links: 1  1  0.5  
%Position of CoM: 0.8  0.2  0.25  
%Mass of links: 0.3  0.3  1  
%Inertia of links: 0.03  0.03  0.1  
%Gravity: 9.81

D = [ 
(3*cos(q(2)))/25 + cos(q(2) - q(3))/2 + 3453/2000, (3*cos(q(2)))/50 + cos(q(2) - q(3))/4 + 521/500, cos(q(2) - q(3))/4 + 13/80, - (27*cos(q(1)))/50 - (53*cos(q(1) + q(2)))/50 - cos(q(1) + q(3))/4, (27*sin(q(1)))/50 + (53*sin(q(1) + q(2)))/50 + sin(q(1) + q(3))/4;
(3*cos(q(2)))/50 + cos(q(2) - q(3))/4 + 521/500, 521/500, cos(q(2) - q(3))/4, -(53*cos(q(1) + q(2)))/50, (53*sin(q(1) + q(2)))/50;
cos(q(2) - q(3))/4 + 13/80, cos(q(2) - q(3))/4, 13/80, -cos(q(1) + q(3))/4, sin(q(1) + q(3))/4;
- (27*cos(q(1)))/50 - (53*cos(q(1) + q(2)))/50 - cos(q(1) + q(3))/4, -(53*cos(q(1) + q(2)))/50, -cos(q(1) + q(3))/4, 8/5, 0;
(27*sin(q(1)))/50 + (53*sin(q(1) + q(2)))/50 + sin(q(1) + q(3))/4, (53*sin(q(1) + q(2)))/50, sin(q(1) + q(3))/4, 0, 8/5;
];

C = [ 
(q_dot(3)*sin(q(2) - q(3)))/4 - q_dot(2)*((3*sin(q(2)))/50 + sin(q(2) - q(3))/4), -((q_dot(1) + q_dot(2))*(6*sin(q(2)) + 25*sin(q(2) - q(3))))/100, (sin(q(2) - q(3))*(q_dot(1) + q_dot(3)))/4, 0, 0;
(q_dot(3)*sin(q(2) - q(3)))/4 + q_dot(1)*((3*sin(q(2)))/50 + sin(q(2) - q(3))/4), 0, (sin(q(2) - q(3))*(q_dot(1) + q_dot(3)))/4, 0, 0;
-(sin(q(2) - q(3))*(q_dot(1) + q_dot(2)))/4, -(sin(q(2) - q(3))*(q_dot(1) + q_dot(2)))/4, 0, 0, 0;
q_dot(1)*((27*sin(q(1)))/50 + (53*sin(q(1) + q(2)))/50 + sin(q(1) + q(3))/4) + (53*sin(q(1) + q(2))*q_dot(2))/50 + (sin(q(1) + q(3))*q_dot(3))/4, (53*sin(q(1) + q(2))*(q_dot(1) + q_dot(2)))/50, (sin(q(1) + q(3))*(q_dot(1) + q_dot(3)))/4, 0, 0;
q_dot(1)*((27*cos(q(1)))/50 + (53*cos(q(1) + q(2)))/50 + cos(q(1) + q(3))/4) + (53*cos(q(1) + q(2))*q_dot(2))/50 + (cos(q(1) + q(3))*q_dot(3))/4, (53*cos(q(1) + q(2))*(q_dot(1) + q_dot(2)))/50, (cos(q(1) + q(3))*(q_dot(1) + q_dot(3)))/4, 0, 0;
];

G = [ 
- (75537*sin(q(1)))/5000 - (2943*sin(q(1) + q(2)))/5000 - (981*sin(q(1) + q(3)))/400;
-(2943*sin(q(1) + q(2)))/5000;
-(981*sin(q(1) + q(3)))/400;
0;
1962/125;
];

E2 = [ 
cos(q(1)) + cos(q(1) + q(2)), cos(q(1) + q(2)), 0, 1, 0;
- sin(q(1)) - sin(q(1) + q(2)), -sin(q(1) + q(2)), 0, 0, 1;
];

