//+
SetFactory("OpenCASCADE");
//+
Point(1) = {0.941586, -3.477076, 0.000000, 1.000000};
//+
Point(2) = {38.799632, -3.477076, 0.000000, 1.000000};
//+
Point(3) = {38.799632, 4.819761, 0.000000, 1.000000};
//+
Point(4) = {0.941586, 4.819761, 0.000000, 1.000000};
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
Point(6) = {29.910060, -0.219710, 0.000000, 0.134934};
//+
Point(5) = {28.560719, -0.219710, 0.000000, 0.134934};
//+
Point(7) = {27.886049, 0.948854, 0.000000, 0.134934};
//+
Point(8) = {27.886049, -1.388274, 0.000000, 0.134934};
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
