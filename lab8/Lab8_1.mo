model Lab8_1
  parameter Real M0_1 = 3.8; // Начальное x1
  parameter Real M0_2 = 2.8; // Начальное x2
  parameter Real p_cr = 28; // Критическая стоимость продукта
  parameter Real N = 38; // Число потребителей производимого продукта
  parameter Real q = 1; // максимальная потребность одного человека в продукте в единицу времени
  parameter Real tau1 = 28; // Длительность производственного цикла 1 фирмы
  parameter Real tau2 = 18; // Длительность производственного цикла 2 фирмы
  parameter Real p1= 8.8; // Себестоимость продукта фирмы 1
  parameter Real p2 = 11.8; // Себестоимость продукта фирмы 2
  Real x1(start = M0_1); 
  Real x2(start = M0_2);
  
  parameter Real a1 = p_cr / (tau1 * tau1 * p1 * p1 * N * q);
  parameter Real a2 = p_cr / (tau2 * tau2 * p2 * p2 * N * q);
  parameter Real b = p_cr / (tau1 * tau1 * tau2 * tau2 * p2 * p2 * N * q);
  parameter Real c1 = (p_cr - p1) / (tau1 * p1);
  parameter Real c2 = (p_cr - p2) / (tau1 * p2);
  
equation
  //der(x1) = (c1/c1) * x1 - (b/c1) * x1 * x2 - (a1/c1) * x1 * x1;
//  der(x2) = (c2/c1) * x2 - (b/c1) * x1 * x2 - (a2/c1) * x2 * x2;
  
  der(x1) = (c1/c1) * x1 - (b/c1) * x1 * x2 - (a1/c1) * x1 * x1;
  der(x2) = (c2/c1) * x2 - (b/c1 + 0.00073) * x1 * x2 - (a2/c1) * x2 * x2;

end Lab8_1;
