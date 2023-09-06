//+
SetFactory("OpenCASCADE");
//+
Point(1) = {0.757777, -4.915898, 0.000000, 1.000000};
//+
Point(2) = {40.028809, -4.915898, 0.000000, 1.000000};
//+
Point(3) = {40.028809, 5.048171, 0.000000, 1.000000};
//+
Point(4) = {0.757777, 5.048171, 0.000000, 1.000000};
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
Point(6) = {34.877946, -0.100210, 0.000000, 0.082490};
//+
Point(5) = {34.053051, -0.100210, 0.000000, 0.082490};
//+
Point(7) = {33.640603, 0.614171, 0.000000, 0.082490};
//+
Point(8) = {33.640603, -0.814590, 0.000000, 0.082490};
//+
Point(10) = {18.873128, -2.523063, 0.000000, 0.090487};
//+
Point(9) = {17.968262, -2.523063, 0.000000, 0.090487};
//+
Point(11) = {17.515828, -1.739426, 0.000000, 0.090487};
//+
Point(12) = {17.515828, -3.306701, 0.000000, 0.090487};
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
