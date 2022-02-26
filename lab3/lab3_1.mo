model lab3_1
parameter Real x0 = 895000;
parameter Real y0 = 577000;
parameter Real a = 0.34;
parameter Real c = 0.93;
parameter Real b = 0.54;
parameter Real h = 0.29;

Real x(start=x0);
Real y(start=y0);

equation
der(x)=-a*x-c*y+2*sin(time);
der(y)=-b*x-h*y+cos(time) + 3;

end lab3_1;
