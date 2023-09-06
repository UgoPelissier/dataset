//+
SetFactory("OpenCASCADE");
//+
Point(1) = {0.157698, -4.822159, 0.000000, 1.000000};
//+
Point(2) = {36.344147, -4.822159, 0.000000, 1.000000};
//+
Point(3) = {36.344147, 5.004963, 0.000000, 1.000000};
//+
Point(4) = {0.157698, 5.004963, 0.000000, 1.000000};
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
Point(6) = {24.616343, 1.978476, 0.000000, 0.129147};
//+
Point(5) = {23.324876, 1.978476, 0.000000, 0.129147};
//+
Point(7) = {22.679143, 3.096919, 0.000000, 0.129147};
//+
Point(8) = {22.679143, 0.860034, 0.000000, 0.129147};
//+
Point(10) = {6.034925, -2.627039, 0.000000, 0.148168};
//+
Point(9) = {4.553249, -2.627039, 0.000000, 0.148168};
//+
Point(11) = {3.812411, -1.343870, 0.000000, 0.148168};
//+
Point(12) = {3.812411, -3.910208, 0.000000, 0.148168};
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
