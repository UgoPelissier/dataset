//+
SetFactory("OpenCASCADE");
//+
Point(1) = {0.252272, -4.342368, 0.000000, 1.000000};
//+
Point(2) = {30.446104, -4.342368, 0.000000, 1.000000};
//+
Point(3) = {30.446104, 4.506180, 0.000000, 1.000000};
//+
Point(4) = {0.252272, 4.506180, 0.000000, 1.000000};
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
Point(6) = {24.842653, 1.342808, 0.000000, 0.125423};
//+
Point(5) = {23.588420, 1.342808, 0.000000, 0.125423};
//+
Point(7) = {22.961304, 2.429006, 0.000000, 0.125423};
//+
Point(8) = {22.961304, 0.256610, 0.000000, 0.125423};
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
