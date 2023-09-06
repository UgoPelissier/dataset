//+
SetFactory("OpenCASCADE");
//+
Point(1) = {0.332217, -3.541735, 0.000000, 1.000000};
//+
Point(2) = {38.372982, -3.541735, 0.000000, 1.000000};
//+
Point(3) = {38.372982, 4.782119, 0.000000, 1.000000};
//+
Point(4) = {0.332217, 4.782119, 0.000000, 1.000000};
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
Point(6) = {14.093130, 2.625972, 0.000000, 0.135951};
//+
Point(5) = {12.733622, 2.625972, 0.000000, 0.135951};
//+
Point(7) = {12.053868, 3.803341, 0.000000, 0.135951};
//+
Point(8) = {12.053868, 1.448603, 0.000000, 0.135951};
//+
Point(10) = {27.512604, -0.074854, 0.000000, 0.107588};
//+
Point(9) = {26.436725, -0.074854, 0.000000, 0.107588};
//+
Point(11) = {25.898785, 0.856885, 0.000000, 0.107588};
//+
Point(12) = {25.898785, -1.006593, 0.000000, 0.107588};
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
