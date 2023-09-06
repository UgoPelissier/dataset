//+
SetFactory("OpenCASCADE");
//+
Point(1) = {0.911486, -3.989256, 0.000000, 1.000000};
//+
Point(2) = {37.387810, -3.989256, 0.000000, 1.000000};
//+
Point(3) = {37.387810, 5.398514, 0.000000, 1.000000};
//+
Point(4) = {0.911486, 5.398514, 0.000000, 1.000000};
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
Point(6) = {21.214657, 0.970573, 0.000000, 0.127615};
//+
Point(5) = {19.938511, 0.970573, 0.000000, 0.127615};
//+
Point(7) = {19.300437, 2.075749, 0.000000, 0.127615};
//+
Point(8) = {19.300437, -0.134602, 0.000000, 0.127615};
//+
Point(10) = {35.851174, -1.932212, 0.000000, 0.067743};
//+
Point(9) = {35.173748, -1.932212, 0.000000, 0.067743};
//+
Point(11) = {34.835035, -1.345544, 0.000000, 0.067743};
//+
Point(12) = {34.835035, -2.518880, 0.000000, 0.067743};
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