//+
SetFactory("OpenCASCADE");
//+
Point(1) = {0.561673, -4.046065, 0.000000, 1.000000};
//+
Point(2) = {33.164570, -4.046065, 0.000000, 1.000000};
//+
Point(3) = {33.164570, 4.569618, 0.000000, 1.000000};
//+
Point(4) = {0.561673, 4.569618, 0.000000, 1.000000};
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
Point(6) = {4.207754, 1.567445, 0.000000, 0.134552};
//+
Point(5) = {2.862233, 1.567445, 0.000000, 0.134552};
//+
Point(7) = {2.189472, 2.732700, 0.000000, 0.134552};
//+
Point(8) = {2.189472, 0.402189, 0.000000, 0.134552};
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
