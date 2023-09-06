//+
SetFactory("OpenCASCADE");
//+
Point(1) = {0.661183, -3.497035, 0.000000, 1.000000};
//+
Point(2) = {34.912573, -3.497035, 0.000000, 1.000000};
//+
Point(3) = {34.912573, 5.364371, 0.000000, 1.000000};
//+
Point(4) = {0.661183, 5.364371, 0.000000, 1.000000};
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
Point(6) = {26.441453, 0.613272, 0.000000, 0.078861};
//+
Point(5) = {25.652843, 0.613272, 0.000000, 0.078861};
//+
Point(7) = {25.258537, 1.296229, 0.000000, 0.078861};
//+
Point(8) = {25.258537, -0.069685, 0.000000, 0.078861};
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
