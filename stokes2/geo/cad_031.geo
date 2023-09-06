//+
SetFactory("OpenCASCADE");
//+
Point(1) = {0.134291, -4.326101, 0.000000, 1.000000};
//+
Point(2) = {31.204651, -4.326101, 0.000000, 1.000000};
//+
Point(3) = {31.204651, 4.556958, 0.000000, 1.000000};
//+
Point(4) = {0.134291, 4.556958, 0.000000, 1.000000};
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
Point(6) = {9.679569, 0.931210, 0.000000, 0.121761};
//+
Point(5) = {8.461957, 0.931210, 0.000000, 0.121761};
//+
Point(7) = {7.853151, 1.985693, 0.000000, 0.121761};
//+
Point(8) = {7.853151, -0.123274, 0.000000, 0.121761};
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