//+
SetFactory("OpenCASCADE");
//+
Point(1) = {0.706419, -4.364035, 0.000000, 1.000000};
//+
Point(2) = {34.782413, -4.364035, 0.000000, 1.000000};
//+
Point(3) = {34.782413, 4.492493, 0.000000, 1.000000};
//+
Point(4) = {0.706419, 4.492493, 0.000000, 1.000000};
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
Point(6) = {15.088064, -2.596429, 0.000000, 0.092014};
//+
Point(5) = {14.167920, -2.596429, 0.000000, 0.092014};
//+
Point(7) = {13.707848, -1.799562, 0.000000, 0.092014};
//+
Point(8) = {13.707848, -3.393297, 0.000000, 0.092014};
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