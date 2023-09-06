//+
SetFactory("OpenCASCADE");
//+
Point(1) = {0.897823, -4.597522, 0.000000, 1.000000};
//+
Point(2) = {33.091030, -4.597522, 0.000000, 1.000000};
//+
Point(3) = {33.091030, 5.396323, 0.000000, 1.000000};
//+
Point(4) = {0.897823, 5.396323, 0.000000, 1.000000};
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
Point(6) = {4.822037, 1.273676, 0.000000, 0.129208};
//+
Point(5) = {3.529957, 1.273676, 0.000000, 0.129208};
//+
Point(7) = {2.883918, 2.392649, 0.000000, 0.129208};
//+
Point(8) = {2.883918, 0.154702, 0.000000, 0.129208};
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