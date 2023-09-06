//+
SetFactory("OpenCASCADE");
//+
Point(1) = {0.172559, -4.051534, 0.000000, 1.000000};
//+
Point(2) = {34.550142, -4.051534, 0.000000, 1.000000};
//+
Point(3) = {34.550142, 4.547021, 0.000000, 1.000000};
//+
Point(4) = {0.172559, 4.547021, 0.000000, 1.000000};
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
Point(6) = {10.563565, -0.784451, 0.000000, 0.083837};
//+
Point(5) = {9.725197, -0.784451, 0.000000, 0.083837};
//+
Point(7) = {9.306014, -0.058404, 0.000000, 0.083837};
//+
Point(8) = {9.306014, -1.510499, 0.000000, 0.083837};
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
