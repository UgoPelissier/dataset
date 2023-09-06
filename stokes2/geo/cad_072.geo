//+
SetFactory("OpenCASCADE");
//+
Point(1) = {0.179442, -4.078741, 0.000000, 1.000000};
//+
Point(2) = {35.520792, -4.078741, 0.000000, 1.000000};
//+
Point(3) = {35.520792, 4.107038, 0.000000, 1.000000};
//+
Point(4) = {0.179442, 4.107038, 0.000000, 1.000000};
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
Point(6) = {31.812491, 0.606273, 0.000000, 0.096940};
//+
Point(5) = {30.843094, 0.606273, 0.000000, 0.096940};
//+
Point(7) = {30.358396, 1.445796, 0.000000, 0.096940};
//+
Point(8) = {30.358396, -0.233249, 0.000000, 0.096940};
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
