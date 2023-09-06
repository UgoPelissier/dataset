//+
SetFactory("OpenCASCADE");
//+
Point(1) = {0.215951, -3.064747, 0.000000, 1.000000};
//+
Point(2) = {33.501547, -3.064747, 0.000000, 1.000000};
//+
Point(3) = {33.501547, 4.804138, 0.000000, 1.000000};
//+
Point(4) = {0.215951, 4.804138, 0.000000, 1.000000};
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
Point(6) = {6.334021, 1.267344, 0.000000, 0.052578};
//+
Point(5) = {5.808241, 1.267344, 0.000000, 0.052578};
//+
Point(7) = {5.545351, 1.722683, 0.000000, 0.052578};
//+
Point(8) = {5.545351, 0.812005, 0.000000, 0.052578};
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
