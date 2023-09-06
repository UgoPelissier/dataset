//+
SetFactory("OpenCASCADE");
//+
Point(1) = {0.089461, -4.079764, 0.000000, 1.000000};
//+
Point(2) = {35.440983, -4.079764, 0.000000, 1.000000};
//+
Point(3) = {35.440983, 5.228030, 0.000000, 1.000000};
//+
Point(4) = {0.089461, 5.228030, 0.000000, 1.000000};
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
Point(6) = {33.787754, 3.846257, 0.000000, 0.067506};
//+
Point(5) = {33.112689, 3.846257, 0.000000, 0.067506};
//+
Point(7) = {32.775157, 4.430880, 0.000000, 0.067506};
//+
Point(8) = {32.775157, 3.261634, 0.000000, 0.067506};
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