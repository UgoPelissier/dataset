//+
SetFactory("OpenCASCADE");
//+
Point(1) = {0.232791, -4.443604, 0.000000, 1.000000};
//+
Point(2) = {33.012527, -4.443604, 0.000000, 1.000000};
//+
Point(3) = {33.012527, 4.645607, 0.000000, 1.000000};
//+
Point(4) = {0.232791, 4.645607, 0.000000, 1.000000};
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
Point(6) = {12.668610, -1.179953, 0.000000, 0.070951};
//+
Point(5) = {11.959103, -1.179953, 0.000000, 0.070951};
//+
Point(7) = {11.604349, -0.565501, 0.000000, 0.070951};
//+
Point(8) = {11.604349, -1.794404, 0.000000, 0.070951};
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
