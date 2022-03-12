model lab5
parameter Real a = 0.79;
parameter Real b = 0.078;
parameter Real c = 0.77;
parameter Real d = 0.076;
parameter Real x0 = 9;
parameter Real y0 = 18;

Real x(start=x0);
Real y(start=y0);
parameter Real start_x = c/d;
parameter Real start_y = a/b;

equation
der(x) = -a*x + b*x*y;
der(y) = c*y - d*x*y;

end lab5;
