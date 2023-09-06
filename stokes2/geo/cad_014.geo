//+
SetFactory("OpenCASCADE");
//+
Point(1) = {0.178652, -3.210428, 0.000000, 1.000000};
//+
Point(2) = {38.883838, -3.210428, 0.000000, 1.000000};
//+
Point(3) = {38.883838, 5.035684, 0.000000, 1.000000};
//+
Point(4) = {0.178652, 5.035684, 0.000000, 1.000000};
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
Point(6) = {25.383498, 0.898581, 0.000000, 0.065284};
//+
Point(5) = {24.730659, 0.898581, 0.000000, 0.065284};
//+
Point(7) = {24.404239, 1.463956, 0.000000, 0.065284};
//+
Point(8) = {24.404239, 0.333205, 0.000000, 0.065284};
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