//+
SetFactory("OpenCASCADE");
//+
Point(1) = {0.132507, -4.256033, 0.000000, 1.000000};
//+
Point(2) = {34.620944, -4.256033, 0.000000, 1.000000};
//+
Point(3) = {34.620944, 4.630817, 0.000000, 1.000000};
//+
Point(4) = {0.132507, 4.630817, 0.000000, 1.000000};
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
Point(6) = {4.034071, 0.871301, 0.000000, 0.082443};
//+
Point(5) = {3.209641, 0.871301, 0.000000, 0.082443};
//+
Point(7) = {2.797426, 1.585278, 0.000000, 0.082443};
//+
Point(8) = {2.797426, 0.157323, 0.000000, 0.082443};
//+
Point(10) = {14.174053, -1.849821, 0.000000, 0.088780};
//+
Point(9) = {13.286254, -1.849821, 0.000000, 0.088780};
//+
Point(11) = {12.842354, -1.080964, 0.000000, 0.088780};
//+
Point(12) = {12.842354, -2.618678, 0.000000, 0.088780};
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