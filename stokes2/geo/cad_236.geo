//+
SetFactory("OpenCASCADE");
//+
Point(1) = {0.512817, -4.479371, 0.000000, 1.000000};
//+
Point(2) = {31.498899, -4.479371, 0.000000, 1.000000};
//+
Point(3) = {31.498899, 5.473925, 0.000000, 1.000000};
//+
Point(4) = {0.512817, 5.473925, 0.000000, 1.000000};
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
Point(6) = {15.961999, 3.381445, 0.000000, 0.141433};
//+
Point(5) = {14.547669, 3.381445, 0.000000, 0.141433};
//+
Point(7) = {13.840504, 4.606291, 0.000000, 0.141433};
//+
Point(8) = {13.840504, 2.156599, 0.000000, 0.141433};
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