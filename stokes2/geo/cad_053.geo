//+
SetFactory("OpenCASCADE");
//+
Point(1) = {0.351759, -4.188313, 0.000000, 1.000000};
//+
Point(2) = {38.886238, -4.188313, 0.000000, 1.000000};
//+
Point(3) = {38.886238, 5.695263, 0.000000, 1.000000};
//+
Point(4) = {0.351759, 5.695263, 0.000000, 1.000000};
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
Point(6) = {17.192899, 2.446340, 0.000000, 0.104613};
//+
Point(5) = {16.146767, 2.446340, 0.000000, 0.104613};
//+
Point(7) = {15.623701, 3.352317, 0.000000, 0.104613};
//+
Point(8) = {15.623701, 1.540363, 0.000000, 0.104613};
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