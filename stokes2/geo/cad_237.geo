//+
SetFactory("OpenCASCADE");
//+
Point(1) = {0.370705, -3.612662, 0.000000, 1.000000};
//+
Point(2) = {35.995952, -3.612662, 0.000000, 1.000000};
//+
Point(3) = {35.995952, 4.440523, 0.000000, 1.000000};
//+
Point(4) = {0.370705, 4.440523, 0.000000, 1.000000};
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
Point(6) = {21.284521, -0.663759, 0.000000, 0.065241};
//+
Point(5) = {20.632110, -0.663759, 0.000000, 0.065241};
//+
Point(7) = {20.305904, -0.098754, 0.000000, 0.065241};
//+
Point(8) = {20.305904, -1.228764, 0.000000, 0.065241};
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
