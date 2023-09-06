//+
SetFactory("OpenCASCADE");
//+
Point(1) = {0.880125, -4.004687, 0.000000, 1.000000};
//+
Point(2) = {36.036260, -4.004687, 0.000000, 1.000000};
//+
Point(3) = {36.036260, 4.190877, 0.000000, 1.000000};
//+
Point(4) = {0.880125, 4.190877, 0.000000, 1.000000};
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
Point(6) = {34.368213, -1.073036, 0.000000, 0.145025};
//+
Point(5) = {32.917959, -1.073036, 0.000000, 0.145025};
//+
Point(7) = {32.192832, 0.182921, 0.000000, 0.145025};
//+
Point(8) = {32.192832, -2.328992, 0.000000, 0.145025};
//+
Point(10) = {26.718194, 1.892618, 0.000000, 0.095845};
//+
Point(9) = {25.759745, 1.892618, 0.000000, 0.095845};
//+
Point(11) = {25.280520, 2.722659, 0.000000, 0.095845};
//+
Point(12) = {25.280520, 1.062576, 0.000000, 0.095845};
//+
Ellipse(5) = {6, 5, 7, 7};
//+
Ellipse(6) = {7, 5, 8, 8};
//+
Ellipse(7) = {8, 5, 6, 6};
//+
Curve Loop(2) = {5, 6, 7};
//+
Ellipse(8) = {10, 9, 11, 11};
//+
Ellipse(9) = {11, 9, 12, 12};
//+
Ellipse(10) = {12, 9, 10, 10};
//+
Curve Loop(3) = {8, 9, 10};
//+
Plane Surface(3) = {1, 2, 3};
//+
Physical Curve("INFLOW", 100) = {1};
//+
Physical Curve("OUTFLOW", 101) = {3};
//+
Physical Curve("WALL_BOUNDARY", 102) = {2, 4};
//+
Physical Curve("OBSTACLE", 103) = {5, 6, 7, 8, 9, 10};
