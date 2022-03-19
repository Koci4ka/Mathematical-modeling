model LAB6

parameter Real a = 0.01;
parameter Real b = 0.02;
parameter Integer N = 12600;
parameter Integer I_0 = 160;
parameter Integer R_0 = 56;
parameter Integer S_0 = N - I_0 - R_0;
Real S(start = S_0);
Real I(start = I_0);
Real R(start = R_0);


equation
/*der(S) = 0;
der(I) = -b* I;
der(R) = b * I;*/

der(S) = -a * S;
der(I) = a * S - b * I;
der(R) = b * I;

end LAB6;
