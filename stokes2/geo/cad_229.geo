//+
SetFactory("OpenCASCADE");
//+
Point(1) = {0.948520, -3.652778, 0.000000, 1.000000};
//+
Point(2) = {40.064297, -3.652778, 0.000000, 1.000000};
//+
Point(3) = {40.064297, 5.412205, 0.000000, 1.000000};
//+
Point(4) = {0.948520, 5.412205, 0.000000, 1.000000};
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
Point(6) = {18.182573, -0.039697, 0.000000, 0.147229};
//+
Point(5) = {16.710283, -0.039697, 0.000000, 0.147229};
//+
Point(7) = {15.974137, 1.235343, 0.000000, 0.147229};
//+
Point(8) = {15.974137, -1.314738, 0.000000, 0.147229};
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
