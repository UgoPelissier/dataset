//+
SetFactory("OpenCASCADE");
//+
Point(1) = {0.376679, -3.795984, 0.000000, 1.000000};
//+
Point(2) = {38.508527, -3.795984, 0.000000, 1.000000};
//+
Point(3) = {38.508527, 5.379307, 0.000000, 1.000000};
//+
Point(4) = {0.376679, 5.379307, 0.000000, 1.000000};
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
Point(6) = {32.795152, 2.190827, 0.000000, 0.118541};
//+
Point(5) = {31.609737, 2.190827, 0.000000, 0.118541};
//+
Point(7) = {31.017030, 3.217426, 0.000000, 0.118541};
//+
Point(8) = {31.017030, 1.164228, 0.000000, 0.118541};
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
