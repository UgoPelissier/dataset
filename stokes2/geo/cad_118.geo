//+
SetFactory("OpenCASCADE");
//+
Point(1) = {0.964026, -4.191196, 0.000000, 1.000000};
//+
Point(2) = {35.753845, -4.191196, 0.000000, 1.000000};
//+
Point(3) = {35.753845, 4.312847, 0.000000, 1.000000};
//+
Point(4) = {0.964026, 4.312847, 0.000000, 1.000000};
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
Point(6) = {25.278909, -0.082754, 0.000000, 0.140970};
//+
Point(5) = {23.869208, -0.082754, 0.000000, 0.140970};
//+
Point(7) = {23.164357, 1.138083, 0.000000, 0.140970};
//+
Point(8) = {23.164357, -1.303591, 0.000000, 0.140970};
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
