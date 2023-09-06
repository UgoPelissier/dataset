//+
SetFactory("OpenCASCADE");
//+
Point(1) = {0.790721, -4.061603, 0.000000, 1.000000};
//+
Point(2) = {39.745736, -4.061603, 0.000000, 1.000000};
//+
Point(3) = {39.745736, 4.780662, 0.000000, 1.000000};
//+
Point(4) = {0.790721, 4.780662, 0.000000, 1.000000};
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
Point(6) = {26.763882, -1.282050, 0.000000, 0.114700};
//+
Point(5) = {25.616882, -1.282050, 0.000000, 0.114700};
//+
Point(7) = {25.043382, -0.288719, 0.000000, 0.114700};
//+
Point(8) = {25.043382, -2.275381, 0.000000, 0.114700};
//+
Point(10) = {17.032832, 2.234288, 0.000000, 0.146572};
//+
Point(9) = {15.567115, 2.234288, 0.000000, 0.146572};
//+
Point(11) = {14.834257, 3.503636, 0.000000, 0.146572};
//+
Point(12) = {14.834257, 0.964940, 0.000000, 0.146572};
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
