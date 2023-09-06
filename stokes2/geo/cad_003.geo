//+
SetFactory("OpenCASCADE");
//+
Point(1) = {0.957213, -3.534301, 0.000000, 1.000000};
//+
Point(2) = {31.884672, -3.534301, 0.000000, 1.000000};
//+
Point(3) = {31.884672, 4.207490, 0.000000, 1.000000};
//+
Point(4) = {0.957213, 4.207490, 0.000000, 1.000000};
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
Point(6) = {27.517975, 0.803025, 0.000000, 0.130713};
//+
Point(5) = {26.210847, 0.803025, 0.000000, 0.130713};
//+
Point(7) = {25.557283, 1.935032, 0.000000, 0.130713};
//+
Point(8) = {25.557283, -0.328981, 0.000000, 0.130713};
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