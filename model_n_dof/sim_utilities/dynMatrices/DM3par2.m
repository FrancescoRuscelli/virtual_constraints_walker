% link_length = [1 1 1];
% com_position = [0.2 0.8 0.8];
% mass = [0.3 0.3 0.3];
% inertia = [0.03 0.03 0.03];
% g = 9.81;



D = [                  (12*cos(q(2) - q(3)))/25 + (12*cos(q(2)))/25 + 543/500, (6*cos(q(2) - q(3)))/25 + (6*cos(q(2)))/25 + 261/500, (6*cos(q(2) - q(3)))/25 + 111/500, - (27*cos(q(1) + q(2)))/50 - (6*cos(q(1) + q(3)))/25 - (9*cos(q(1)))/25, (27*sin(q(1) + q(2)))/50 + (6*sin(q(1) + q(3)))/25 + (9*sin(q(1)))/25;
                    (6*cos(q(2) - q(3)))/25 + (6*cos(q(2)))/25 + 261/500,                                              261/500,           (6*cos(q(2) - q(3)))/25,                                               -(27*cos(q(1) + q(2)))/50,                                              (27*sin(q(1) + q(2)))/50;
                                       (6*cos(q(2) - q(3)))/25 + 111/500,                              (6*cos(q(2) - q(3)))/25,                           111/500,                                                -(6*cos(q(1) + q(3)))/25,                                               (6*sin(q(1) + q(3)))/25;
 - (27*cos(q(1) + q(2)))/50 - (6*cos(q(1) + q(3)))/25 - (9*cos(q(1)))/25,                            -(27*cos(q(1) + q(2)))/50,          -(6*cos(q(1) + q(3)))/25,                                                                    9/10,                                                                     0;
   (27*sin(q(1) + q(2)))/50 + (6*sin(q(1) + q(3)))/25 + (9*sin(q(1)))/25,                             (27*sin(q(1) + q(2)))/50,           (6*sin(q(1) + q(3)))/25,                                                                       0,                                                                  9/10];

C = [                                                         (6*sin(q(2) - q(3))*q_dot(3))/25 - (6*sin(q(2) - q(3))*q_dot(2))/25 - (6*q_dot(2)*sin(q(2)))/25, -((6*q_dot(1) + 6*q_dot(2))*(sin(q(2) - q(3)) + sin(q(2))))/25, (6*sin(q(2) - q(3))*(q_dot(1) + q_dot(3)))/25, 0, 0;
                                                         (6*q_dot(1)*sin(q(2)))/25 + (6*sin(q(2) - q(3))*q_dot(1))/25 + (6*sin(q(2) - q(3))*q_dot(3))/25,                                                              0, (6*sin(q(2) - q(3))*(q_dot(1) + q_dot(3)))/25, 0, 0;
                                                                                                          -(6*sin(q(2) - q(3))*(q_dot(1) + q_dot(2)))/25,                 -(6*sin(q(2) - q(3))*(q_dot(1) + q_dot(2)))/25,                                             0, 0, 0;
 (27*q_dot(2)*sin(q(1) + q(2)))/50 + (6*q_dot(3)*sin(q(1) + q(3)))/25 + q_dot(1)*((27*sin(q(1) + q(2)))/50 + (6*sin(q(1) + q(3)))/25 + (9*sin(q(1)))/25),                 (27*sin(q(1) + q(2))*(q_dot(1) + q_dot(2)))/50, (6*sin(q(1) + q(3))*(q_dot(1) + q_dot(3)))/25, 0, 0;
 q_dot(1)*((27*cos(q(1) + q(2)))/50 + (6*cos(q(1) + q(3)))/25 + (9*cos(q(1)))/25) + (27*q_dot(2)*cos(q(1) + q(2)))/50 + (6*q_dot(3)*cos(q(1) + q(3)))/25,                 (27*cos(q(1) + q(2))*(q_dot(1) + q_dot(2)))/50, (6*cos(q(1) + q(3))*(q_dot(1) + q_dot(3)))/25, 0, 0];

G =  [- (2943*sin(q(1) + q(2)))/1250 - (2943*sin(q(1) + q(3)))/1250 - (32373*sin(q(1)))/5000;
                                                              -(2943*sin(q(1) + q(2)))/1250;
                                                              -(2943*sin(q(1) + q(3)))/1250;
                                                                                          0;
                                                                                  8829/1000];
