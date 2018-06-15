K =   1/2 * m1 * (vc1_0).' * vc1_0 ...
    + 1/2 * (w01_0).' * I1 * (w01_0) ...
    + 1/2 * m2 * (vc2_0).' * (vc2_0) ...
    + 1/2 * (w12_0).' * I2 *  (w12_0);

% P =   m1 * g * (z2(t) + lc1 * cos(q1(t))) ...
%       + m2 * g * (z2(t) + l1 * cos(q1(t)) + lc2 * cos(q1(t) + q2(t)));

P =   m1 * g * (z2(t) + lc1 * cos(q1(t) + alfa) ) ...
      + m2 * g * (z2(t) + l1 * cos(q1(t)) + lc2 * cos(q1(t) + q2(t) + alfa) );
  
% P =   m1 * g * (lc1 * cos(q1(t))) ...
%       + m2 * g * (l1 * cos(q1(t)) + lc2 * cos(q1(t) + q2(t)));

L = K - P;
%==========================================================================
dL_q1dot = functionalDerivative(L,q1_dot(t));
dL1_dt = diff_t(dL_q1dot,[GeneralizedCoordinates,d_GeneralizedCoordinates], [first_derivative_names, second_derivative_names]);
dL_q1 = functionalDerivative(L,q1(t));
First_eq = dL1_dt - dL_q1;
%==========================================================================
dL_q2dot = functionalDerivative(L,q2_dot(t));
dL2_dt = diff_t(dL_q2dot,[GeneralizedCoordinates,d_GeneralizedCoordinates], [first_derivative_names, second_derivative_names]);
dL_q2 = functionalDerivative(L,q2(t));
Second_eq = dL2_dt - dL_q2;
%==========================================================================
dL_z1dot = functionalDerivative(L,z1_dot(t));
dL3_dt = diff_t(dL_z1dot,[GeneralizedCoordinates,d_GeneralizedCoordinates], [first_derivative_names, second_derivative_names]);
dL_z1 = functionalDerivative(L,z1(t));
Third_eq = dL3_dt - dL_z1;
%==========================================================================
dL_z2dot = functionalDerivative(L,z2_dot(t));
dL4_dt = diff_t(dL_z2dot,[GeneralizedCoordinates,d_GeneralizedCoordinates], [first_derivative_names, second_derivative_names]);
dL_z2 = functionalDerivative(L,z2(t));
Fourth_eq = dL4_dt - dL_z2;