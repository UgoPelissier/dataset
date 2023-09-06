//+
SetFactory("OpenCASCADE");
//+
Point(1) = {0.693313, -3.448072, 0.000000, 1.000000};
//+
Point(2) = {32.615955, -3.448072, 0.000000, 1.000000};
//+
Point(3) = {32.615955, 4.668225, 0.000000, 1.000000};
//+
Point(4) = {0.693313, 4.668225, 0.000000, 1.000000};
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
Point(6) = {10.207921, -1.712505, 0.000000, 0.070728};
//+
Point(5) = {9.500643, -1.712505, 0.000000, 0.070728};
//+
Point(7) = {9.147004, -1.099985, 0.000000, 0.070728};
//+
Point(8) = {9.147004, -2.325026, 0.000000, 0.070728};
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