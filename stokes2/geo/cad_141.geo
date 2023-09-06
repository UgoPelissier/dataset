//+
SetFactory("OpenCASCADE");
//+
Point(1) = {0.068286, -3.651134, 0.000000, 1.000000};
//+
Point(2) = {33.096491, -3.651134, 0.000000, 1.000000};
//+
Point(3) = {33.096491, 4.535550, 0.000000, 1.000000};
//+
Point(4) = {0.068286, 4.535550, 0.000000, 1.000000};
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
Point(6) = {2.665672, 0.060065, 0.000000, 0.081041};
//+
Point(5) = {1.855264, 0.060065, 0.000000, 0.081041};
//+
Point(7) = {1.450060, 0.761899, 0.000000, 0.081041};
//+
Point(8) = {1.450060, -0.641769, 0.000000, 0.081041};
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