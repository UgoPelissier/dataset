//+
SetFactory("OpenCASCADE");
//+
Point(1) = {0.583702, -3.813300, 0.000000, 1.000000};
//+
Point(2) = {37.836944, -3.813300, 0.000000, 1.000000};
//+
Point(3) = {37.836944, 5.406809, 0.000000, 1.000000};
//+
Point(4) = {0.583702, 5.406809, 0.000000, 1.000000};
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
Point(6) = {30.243346, 2.546244, 0.000000, 0.107763};
//+
Point(5) = {29.165712, 2.546244, 0.000000, 0.107763};
//+
Point(7) = {28.626895, 3.479503, 0.000000, 0.107763};
//+
Point(8) = {28.626895, 1.612985, 0.000000, 0.107763};
//+
Ellipse(5) = {6, 5, 7, 7};
//+
Ellipse(6) = {7, 5, 8, 8};
//+
Ellipse(7) = {8, 5, 6, 6};
//+
Curve Loop(2) = {5, 6, 7};
//+
Plane Surface(2) = {1, 2};
//+
Physical Curve("INFLOW", 100) = {1};
//+
Physical Curve("OUTFLOW", 101) = {3};
//+
Physical Curve("WALL_BOUNDARY", 102) = {2, 4};
//+
Physical Curve("OBSTACLE", 103) = {5, 6, 7};