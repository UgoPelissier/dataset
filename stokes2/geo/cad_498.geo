//+
SetFactory("OpenCASCADE");
//+
Point(1) = {0.789859, -4.171332, 0.000000, 1.000000};
//+
Point(2) = {35.432817, -4.171332, 0.000000, 1.000000};
//+
Point(3) = {35.432817, 4.912173, 0.000000, 1.000000};
//+
Point(4) = {0.789859, 4.912173, 0.000000, 1.000000};
//+
Line(1) = {4, 1};
//+
Line(2) = {1, 2};
//+
Line(3) = {2, 3};
//+
Line(4) = {3, 4};
//+
Curve Loop(1) = {1, 2, 3, 4};
//+
Point(6) = {28.104053, 2.613251, 0.000000, 0.058096};
//+
Point(5) = {27.523094, 2.613251, 0.000000, 0.058096};
//+
Point(7) = {27.232614, 3.116376, 0.000000, 0.058096};
//+
Point(8) = {27.232614, 2.110125, 0.000000, 0.058096};
//+
Point(10) = {31.069966, 2.141534, 0.000000, 0.055481};
//+
Point(9) = {30.515154, 2.141534, 0.000000, 0.055481};
//+
Point(11) = {30.237748, 2.622015, 0.000000, 0.055481};
//+
Point(12) = {30.237748, 1.661053, 0.000000, 0.055481};
//+
Ellipse(5) = {6, 5, 7, 7};
//+
Ellipse(6) = {7, 5, 8, 8};
//+
Ellipse(7) = {8, 5, 6, 6};
//+
Curve Loop(2) = {5, 6, 7};
//+
Ellipse(8) = {10, 9, 11, 11};
//+
Ellipse(9) = {11, 9, 12, 12};
//+
Ellipse(10) = {12, 9, 10, 10};
//+
Curve Loop(3) = {8, 9, 10};
//+
Plane Surface(3) = {1, 2, 3};
//+
Physical Curve("INFLOW", 100) = {1};
//+
Physical Curve("OUTFLOW", 101) = {3};
//+
Physical Curve("WALL_BOUNDARY", 102) = {2, 4};
//+
Physical Curve("OBSTACLE", 103) = {5, 6, 7, 8, 9, 10};
