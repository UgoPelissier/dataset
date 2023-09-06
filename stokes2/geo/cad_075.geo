//+
SetFactory("OpenCASCADE");
//+
Point(1) = {0.790741, -4.087456, 0.000000, 1.000000};
//+
Point(2) = {36.016466, -4.087456, 0.000000, 1.000000};
//+
Point(3) = {36.016466, 4.538830, 0.000000, 1.000000};
//+
Point(4) = {0.790741, 4.538830, 0.000000, 1.000000};
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
Point(6) = {11.866872, 1.044016, 0.000000, 0.110963};
//+
Point(5) = {10.757241, 1.044016, 0.000000, 0.110963};
//+
Point(7) = {10.202425, 2.004985, 0.000000, 0.110963};
//+
Point(8) = {10.202425, 0.083048, 0.000000, 0.110963};
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
