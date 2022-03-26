model Lab7_1
  parameter Integer x0 = 10;
  parameter Integer N = 1140; 
  Real x(start=x0);
equation
  der(x) = (0.13 + 0.000013*x)*(N-x);
  //der(x) = (0.000031 + 0.31*x)*(N-x);
  //der(x) = (0.13*time + 0.31*x*cos(time))*(N-x);
end Lab7_1;
